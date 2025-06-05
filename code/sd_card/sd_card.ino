#include <SD.h>
#include <SPI.h>
#include <ArduinoJson.h>

// Benutzerdefinierte SPI-Pins
#define SD_CS_PIN 7 // Chip Select Pin
#define SD_SCK_PIN 4 // Serial Clock
#define SD_MISO_PIN 5 // Master In Slave Out
#define SD_MOSI_PIN 6 // Master Out Slave In

// Filename auf SD-Karte
const char filename = *"/sensor_data.json";

// Wartezeit nach jedem loop
const uint16_t measurementInterval = 5000;

/*
* 
* SETUP
*/
void setup() {
  Serial.begin(115200);

  pinMode(SD_CS_PIN, OUTPUT);

  // SPI mit benutzerdefinierten Pins initialisieren
  SPI.begin(SD_SCK_PIN, SD_MISO_PIN, SD_MOSI_PIN, SD_CS_PIN);

  // SD-Karte initialisieren
  if (!SD.begin(SD_CS_PIN)) {
    Serial.println("SD-Karte konnte nicht initialisiert werden!");
    return;
  }
  Serial.println("SD-Karte erfolgreich initialisiert!");
}

/*
* 
* Main Loop
*/
void loop() {

  // JSON-Daten initialisieren
  StaticJsonDocument<256> measurementData;

  // Beispielwerte generieren
  measurementData["temperature"] = random(20, 30) + random(0, 10) / 10.0; // Beispiel: 20.0 bis 30.9
  measurementData["humidity"] = random(40, 60) + random(0, 10) / 10.0;    // Beispiel: 40.0 bis 59.9

  // JSON-Daten auf SD-Karte speichern
  writeDataToSD(measurementData, true);

  // Warten...
  delay(measurementInterval);
}


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
