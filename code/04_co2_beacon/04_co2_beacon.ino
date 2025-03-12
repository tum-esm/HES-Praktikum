#include <SD.h>
#include <SPI.h>
#include <WiFi.h>
#include <ArduinoJson.h>
#include "time.h"
#include "esp_sntp.h"
#include "DFRobot_AHT20.h"
#include "Sunrise.h"

// Pins für Senseair Sunrise CO2 Sensor
#define SUNRISE_EN 3
#define SUNRISE_RDY 2

// Benutzerdefinierte SPI-Pins
#define SD_CS_PIN 7 // Chip Select Pin
#define SD_SCK_PIN 4 // Serial Clock
#define SD_MISO_PIN 5 // Master In Slave Out
#define SD_MOSI_PIN 6 // Master Out Slave In

// Benutzerdefinierte I2C Pins
#define I2C_SDA 1
#define I2C_SCL 0

// I2C für Sunrise CO2 Sensor
const uint8_t   SUNRISE_ADDR            = 0x68;

// Einstellungen für CO2 Sensor (continous Mode)
const uint16_t measPeriod = 2; // Messperiode in Sekunden (2-65535)
const uint16_t measNum = 8; //Anzahl der Messungen per periode (2-32767)
const bool activate_ABC = 0; // Automatic Baseline Correction (ABC) deaktivieren

// Wartezeit nach jedem loop
const uint16_t measurementInterval = 2000;
const uint16_t rgb_blink_duration = 50; //muss kleiner als das Messinterval sein!

// Filename auf SD-Karte
const char filename = *"/sensor_data.json";

//WiFi settings
const char *ssid = "iPhone (2)";
const char *password = "1212abab";

const char *ntpServer1 = "pool.ntp.org";
const char *ntpServer2 = "time.nist.gov";
const char *time_zone = "UTC-0";  // TimeZone rule for Europe/Rome including daylight adjustment rules (optional)

// T&rH Sensor initialisieren
DFRobot_AHT20 sensor;

/*
* 
* SETUP
*/
void setup()
{
  Serial.begin(115200);
  Serial.println("Initialisierung...");

  // RGB LED initialisieren
  pinMode(RGB_BUILTIN, OUTPUT);
  rgbLedWrite(RGB_BUILTIN, 120, 0, 0); // LED leuchtet rot während Setup

  // SPI mit benutzerdefinierten Pins initialisieren
  SPI.begin(SD_SCK_PIN, SD_MISO_PIN, SD_MOSI_PIN, SD_CS_PIN);

  // SD-Karte initialisieren
  if (!SD.begin(SD_CS_PIN)) {
    Serial.println("SD-Karte konnte nicht initialisiert werden!");
    return;
  }
  Serial.println("SD-Karte erfolgreich initialisiert!");

  //CO2 Sensor initialisieren
  pinMode(SUNRISE_EN, OUTPUT);
  digitalWrite(SUNRISE_EN, HIGH);
  delay(50); //kurz warten bis Sensor aktiviert ist

  // Sensor initialisieren
  init_sunrise(SUNRISE_ADDR, measPeriod, measNum, false);

  //neue Konfiguration aktivieren
  digitalWrite(SUNRISE_EN, LOW);
  delay(50); 
  digitalWrite(SUNRISE_EN, HIGH);
  delay(50);

  // Sensorkonfiguration lesen und plotten
  read_sensor_config(SUNRISE_ADDR);

  // Tempertur und Luftfeuchtigkeitssensor initialisieren
  // I2C Verbindung wurde bereits mit init_sunrise() hergestellt
  uint8_t status;
  while((status = sensor.begin()) != 0){
    Serial.print("AHT20 sensor initialization failed. error status : ");
    Serial.println(status);
    delay(1000);
  }

    // Connect WiFi
  Serial.printf("Verbinde mit %s ", ssid);
  WiFi.begin(ssid, password);

  esp_sntp_servermode_dhcp(1);  // (optional)
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }
  Serial.println(" VERBUNDEN");

  //config the time 
  configTime(0, 0, ntpServer1, ntpServer2);
  Serial.println("Initialisierung abgeschlossen.");
  rgbLedWrite(RGB_BUILTIN, 0, 0, 0); // LED leuchtet rot während Setup
}


/*
* 
* Main Loop
*/
void loop() {
  // JSON-Daten initialisieren
  StaticJsonDocument<256> measurementData;

  // timestamp erzeugen
  struct tm timeinfo;
  char timestamp[30];
  if (!getLocalTime(&timeinfo)) {
      Serial.println("No time available (yet)");
      return;
  }
  strftime(timestamp, sizeof(timestamp), "%Y-%m-%dT%H:%M:%SZ", &timeinfo); // Format timestamp

  // Messdaten von Sensor holen
  float temperature, humidity, co2 = 0;

  // Temperatur und Luftfeuchtigkeitsmessung
  if(sensor.startMeasurementReady(/* crcEn = */true)){
    temperature = sensor.getTemperature_C();
    humidity = sensor.getHumidity_RH();
  }

  // CO2 Messung
  co2 = read_sensor_measurements(SUNRISE_ADDR);

  // Messdaten für Serial Plotter ausgeben
  Serial.print(temperature);
  Serial.print("\t");
  Serial.print(humidity);
  Serial.print("\t");
  Serial.print(co2);
  Serial.print("\n");

  // Werte auf SD-Karte schreiben
  measurementData["timestamp"] =  timestamp;
  measurementData["temperature [°C]"] = temperature;
  measurementData["humidity [%rH]"] = humidity;
  measurementData["co2 [ppm]"] = co2;
  writeDataToSD(measurementData, false); // nicht plotten

  // Warten und blinken...
  delay(measurementInterval - rgb_blink_duration);
  rgbLedWrite(RGB_BUILTIN, 0,120,0);
  delay(rgb_blink_duration);
  rgbLedWrite(RGB_BUILTIN,0,0,0);
}


/*
* 
* Functions
*/
// Funktion: JSON-Daten auf SD-Karte speichern
void writeDataToSD(StaticJsonDocument<256>& jsonData, bool printData) {
  File file = SD.open("/sensor_data.json", FILE_APPEND);
  if (file) {
    serializeJson(jsonData, file);  // JSON in Datei schreiben
    file.println();                // Neue Zeile hinzufügen
    file.close();
    if (printData){
      Serial.println("Daten gespeichert:");
      serializeJsonPretty(jsonData, Serial); // Für Debugging
      Serial.println();
    }
  } else {
    Serial.println("Fehler beim Schreiben der SD Karte!");
  }
}
