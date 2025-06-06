#include <SD.h>
#include <SPI.h>
#include <ArduinoJson.h>
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
#define I2C_SDA 0
#define I2C_SCL 1

// I2C für Sunrise CO2 Sensor
const uint8_t   SUNRISE_ADDR            = 0x68;

// Einstellungen für CO2 Sensor (continous Mode)
const uint16_t measPeriod = 2; // Messperiode in Sekunden (2-65535)
const uint16_t measNum = 8; //Anzahl der Messungen per periode (2-32767)
const bool activate_ABC = 0; // Automatic Baseline Correction (ABC) deaktivieren


// TODO
// DFRObot_AHT20 sensor objekt instanzieren


/*
* 
* SETUP
*/
void setup()
{
  //TODO
  // LED wähgrend der Setup Routine rot leuchten lassen

  Serial.begin(115200);
  Serial.println("Initialisierung...");

  //TODO
  // SPI mit benutzerdefinierten Pins initialisieren

  //TODO
  // SD-Karte initialisieren

  //TODO
  //Enable Pin für Sunrise Sensor auf Output und HIGH setzen

  //TODO
  // Sensor initialisieren und neue Konfiguration aktivieren

  //TODO
  // Tempertur und Luftfeuchtigkeitssensor initialisieren

}


/*
* 
* Main Loop
*/
void loop() {
  // JSON-Daten initialisieren
  StaticJsonDocument<256> measurementData;

  // Variable für Messdaten initialisieren
  float temperature, humidity, co2 = 0;

  // Temperatur und Luftfeuchtigkeitsmessung
  if(sensor.startMeasurementReady(/* crcEn = */true)){
    temperature = sensor.getTemperature_C();
    humidity = sensor.getHumidity_RH();
  }
  // CO2 Messung
  co2 = read_sensor_measurements(SUNRISE_ADDR);

  // TODO
  // Messdaten für Serial Plotter ausgeben

  // TODO
  // Werte auf SD-Karte schreiben

  // TODO
  // Warten und blinken...

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
