/*
  sunrise.h - A simple library to access and interact with 
  Senseair Sunrise CO2 sensor via I2C. The source code of 
  this library was taken from https://github.com/Senseair-AB/
  and adapted in library format.

  (c) Daniel Kühbacher
  Technical University of Munich, Environmental Sensing and Modeling
  2025
*/

#ifndef Sunrise_h
#define Sunrise_h

#include "Arduino.h"

void init_sunrise(uint8_t i2c_address,
                  uint16_t measPeriod = 2, /*measurement period in seconds (2-65535)*/
                  uint16_t measNum = 1, /*number of measuremtns per period (2-32767)*/
                  bool setABC = false);

uint16_t read_sensor_measurements(uint8_t i2c_address);
void read_sensor_config(uint8_t i2c_address);

#endif