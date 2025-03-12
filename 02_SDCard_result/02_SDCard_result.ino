#include <SD.h>
#include <SPI.h>
#include <ArduinoJson.h>
#include "DFRobot_AHT20.h"

// Benutzerdefinierte SPI-Pins
#define SD_CS_PIN 7 // Chip Select Pin
#define SD_SCK_PIN 4 // Serial Clock
#define SD_MISO_PIN 5 // Master In Slave Out
#define SD_MOSI_PIN 6 // Master Out Slave In

// Benutzerdefinierte I2C Pins
#define I2C_SDA 1
#define I2C_SCL 0

// Filename auf SD-Karte
const char filename = *"/sensor_data.json";

// Wartezeit nach jedem loop
const uint16_t measurementInterval = 1000;
const uint16_t rgb_blink_duration = 50; //muss kleiner als das Messinterval sein!

// T&rH Sensor initialisieren
DFRobot_AHT20 sensor;

/*
* 
* SETUP
*/
void setup() {
  Serial.begin(115200);

  // RGB LED initialisieren
  pinMode(RGB_BUILTIN, OUTPUT);

  // SPI mit benutzerdefinierten Pins initialisieren
  SPI.begin(SD_SCK_PIN, SD_MISO_PIN, SD_MOSI_PIN, SD_CS_PIN);

  // SD-Karte initialisieren
  if (!SD.begin(SD_CS_PIN)) {
    Serial.println("SD-Karte konnte nicht initialisiert werden!");
    return;
  }
  Serial.println("SD-Karte erfolgreich initialisiert!");

  // I2C mit definierten initialisieren
  Wire.begin(I2C_SDA, I2C_SCL);
  // Temperatur und Humidity Sensor initialisieren
  uint8_t status;
  while((status = sensor.begin()) != 0){
    Serial.print("AHT20 sensor initialization failed. error status : ");
    Serial.println(status);
    delay(1000);
  }
}

/*
* 
* Main Loop
*/
void loop() {
  // JSON-Daten initialisieren
  StaticJsonDocument<256> measurementData;

  // Messdaten von Sensor holen
  float temperature, humidity = 0;
  if(sensor.startMeasurementReady(/* crcEn = */true)){
    temperature = sensor.getTemperature_C();
    humidity = sensor.getHumidity_RH();
  }

  // Messdaten für Serial Plotter ausgeben
  Serial.print(temperature);
  Serial.print("\t");
  Serial.print(humidity);
  Serial.print("\n");

  // Werte auf SD-Karte schreiben
  measurementData["temperature"] = temperature;
  measurementData["humidity"] = humidity;
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
