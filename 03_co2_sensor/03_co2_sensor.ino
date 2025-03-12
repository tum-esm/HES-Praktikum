#include "Sunrise.h"

// Pins für Senseair Sunrise CO2 Sensor
#define SUNRISE_EN 3
#define SUNRISE_RDY 2

// I2C für Sunrise CO2 Sensor
const uint8_t   SUNRISE_ADDR            = 0x68;

// Einstellungen für CO2 Sensor (continous Mode)
const uint16_t measPeriod = 2; // Messperiode in Sekunden (2-65535)
const uint16_t measNum = 8; //Anzahl der Messungen per periode (2-32767)
const bool activate_ABC = 0; // Automatic Baseline Correction (ABC) deaktivieren

// Wartezeit nach jedem loop
const uint16_t measurementInterval = 2000;
const uint16_t rgb_blink_duration = 50; //muss kleiner als das Messinterval sein!


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

  //Enable Pin für Sunrise Sensor auf Output und HIGH setzen
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
  Serial.println("Initialisierung abgeschlossen.");
}


/*
* 
* Main Loop
*/
void loop() {

  uint16_t co2_value = 0;
  /* Read measurements */
  co2_value = read_sensor_measurements(SUNRISE_ADDR);
  Serial.println(co2_value);

  // Warten und blinken...
  delay(measurementInterval - rgb_blink_duration);
  rgbLedWrite(RGB_BUILTIN, 0,120,0);
  delay(rgb_blink_duration);
  rgbLedWrite(RGB_BUILTIN,0,0,0);
}
