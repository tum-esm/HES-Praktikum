/*
  sunrise.h - A simple library to access and interact with 
  Senseair Sunrise CO2 sensor via I2C. The source code of 
  this library was taken from https://github.com/Senseair-AB/
  and adapted in library format.
  
  (c) Daniel Kühbacher
  Technical University of Munich, Environmental Sensing and Modeling
  2025
*/
#include <Arduino.h>
#include <Wire.h>

#include "sunrise.h"

#define I2C_SDA 1
#define I2C_SCL 0

/* Amount of wakeup attempts before time-out */
const int       ATTEMPTS                 = 5;
/* It takes 25ms to write one EE register */
const int       EEPROM_UPDATE_DELAY_MS   = 25;

/* Register Addresses */
const uint8_t ERROR_STATUS             = 0x01;
const uint8_t MEASUREMENT_MODE         = 0x95;
const uint8_t METER_CONTROL            = 0xA5;
const uint8_t SPECIAL_REGISTER         = 0x83;

/* Measurement modes */
const uint16_t CONTINUOUS              = 0x0000;
const uint16_t SINGLE                  = 0x0001;


/* Initialize I2C bus and pins */
void  reInitI2C() {
  /* Initialize I2C and use default pins defined for the board */
  Wire.begin(I2C_SDA, I2C_SCL);
  /* Setup I2C clock to 100kHz */
  Wire.setClock(100000);  
}


/* Workaround regarding BAD implementations of Wire.endTransmission(false) function */
int WireRequestFrom(uint8_t dev_addr, uint8_t bytes_numbers, uint8_t offset_to_read, bool stop) {
  int error;
  Wire.beginTransmission(dev_addr);
  Wire.write(offset_to_read); //starting register address, from which read data
  Wire.endTransmission(false);
  error = Wire.requestFrom((uint8_t)dev_addr, (uint8_t)bytes_numbers /* how many bytes */, (uint8_t)stop /* STOP*/);
  return error;
}


/** 
 * @brief  Wakes up the sensor by initializing a write operation
 *         with no data.
 * 
 * @param  i2c_address: The sensor's communication address
 * @note   This example shows a simple way to wake up the sensor.
 * @retval true if successful, false if failed
 */
bool _wakeup(uint8_t i2c_address){
  int attemps = 5;
  int error;
 
  do {
    uint8_t byte_0;    
    /* */
    Wire.beginTransmission(i2c_address);
    error = Wire.endTransmission(true);
  } while(((error != 0 /*success */) && (error != 2 /*Received NACK on transmit of address*/) && (error != 1 /* BUG in STM32 library*/)) && (--attemps > 0)); 
  /* STM32 driver can stack under some conditions */
  if(error == 4) {
    /* Reinitialize I2C*/
    reInitI2C();
    return false;
  } 
  return (attemps > 0);
}


/**
 * @brief  Reads and prints the sensor's current CO2 value and
 *         error status.
 * 
 * @param  i2c_address: The sensor's communication address
 * @note   This example shows a simple way to read the sensor's
 *         CO2 measurement and error status.
 * @retval None
 */
uint16_t read_sensor_measurements(uint8_t i2c_address) {
  /* Function variables */ 
  int error;
  int numBytes = 7;

  /* Wakeup */
  if(!(_wakeup(i2c_address))) {
    Serial.print("Failed to wake up sensor.");
    return 0;
  }

  /* Request values */
    error = WireRequestFrom(i2c_address, numBytes /* how many bytes */, ERROR_STATUS /* from address*/, true /* STOP*/);    
  if(error != numBytes ) {  
    Serial.print("Failed to read values. Error code: ");
    Serial.println(error);
    return 0;
  }

  /* Error status */
  uint8_t eStatus = Wire.read();

  /* read 4 reserved registers */
  uint8_t byteHi = Wire.read();
  uint8_t byteLo = Wire.read();
  byteHi = Wire.read();
  byteLo = Wire.read();

  /* read filtered CO2 value */
  byteHi = Wire.read();
  byteLo = Wire.read();
  uint16_t co2Val = ((int16_t)(int8_t) byteHi << 8) | (uint16_t)byteLo;
  return co2Val;
}


void writeRegister(uint8_t i2c_address, uint8_t reg_address, uint16_t value){

/* Wakeup */
  if(!(_wakeup(i2c_address))) {
    Serial.print("Failed to wake up sensor.");
    return;
  }

  uint8_t error = 0;
  uint8_t lowByte = value & 0xFF;       // Extract low byte (least significant byte)
  uint8_t highByte = (value >> 8) & 0xFF; // Extract high byte (most significant byte)

  Wire.beginTransmission(i2c_address);
  Wire.write(reg_address);
  Wire.write(highByte);
  Wire.write(lowByte);
  error = Wire.endTransmission(true);
  delay(EEPROM_UPDATE_DELAY_MS);
  
  if(error != 0) {
    Serial.print("Failed to send request. Error code: ");
    Serial.println(error); 
    /* FATAL ERROR */
    while(true);
  }
}



/**
 * @brief  Enable or disable ABC.
 * 
 * @param  i2c_address: The sensor's communication address
 * @param  enable: Set true to enable or false to disable ABC
 * @note   This example shows a simple way to enable/disable ABC. 
 * It could be necessary to disable ABC if sensor will be tested with CO2 concentrations below 400ppm.
 * @retval None
 */
void setABC(uint8_t i2c_address, bool enable) {
  /* Wakeup */
  if(!(_wakeup(i2c_address))) {
    Serial.print("Failed to wake up sensor.");
    return;
  }

  /* Request values */
  int error = WireRequestFrom(i2c_address, 1, METER_CONTROL /* from address*/, true /* STOP*/);    
  if(error != 1 ) {
    Serial.print("Failed to write to i2c_address. Error code : ");
    Serial.println(error);
    return;
  }

  uint8_t  meterControl = Wire.read();

  if(enable) {
    Serial.println("Enabling ABC...");
    meterControl &= (uint8_t)~0x02U;
  } else {
    Serial.println("Disabling ABC...");
    meterControl |= 0x02U;
  }

  /* Wakeup */
  if(!(_wakeup(i2c_address))) {
    Serial.print("Failed to wake up sensor.");
    return;
  }

  Wire.beginTransmission(i2c_address);
  Wire.write(METER_CONTROL);
  Wire.write(meterControl);
  error = Wire.endTransmission(true);
  delay(EEPROM_UPDATE_DELAY_MS);
  
  if(error != 0) {
    Serial.print("Failed to send request. Error code: ");
    Serial.println(error); 
    /* FATAL ERROR */
    while(true);
  }
}


/**
 * @brief  Reads and prints the sensor's current measurement mode,
 *         measurement period and number of samples.
 * 
 * @param  i2c_address: The sensor's communication address
 * @note   This example shows a simple way to read the sensor's
 *         measurement configurations.
 * @retval None
 */
void read_sensor_config(uint8_t i2c_address) {
  /* Function variables */
  int error;
  int numBytes = 7;

  /* Wakeup */
  if(!(_wakeup(i2c_address))) {
    Serial.print("Failed to wake up sensor.");
    return;
  }

  /* Request values */
  error = WireRequestFrom(i2c_address, numBytes, MEASUREMENT_MODE /* from address*/, true /* STOP*/);    
  if(error != numBytes ) {
    Serial.print("Failed to write to i2c_address. Error code : ");
    Serial.println(error);
    return;
  }

  /* Read values */
  /* Measurement mode */
  uint8_t measMode = Wire.read();

  /* Measurement period */
  uint8_t byteHi = Wire.read();
  uint8_t byteLo = Wire.read();
  uint16_t measPeriod = ((int16_t)(int8_t) byteHi << 8) | (uint16_t)byteLo;

  /* Number of samples */
  byteHi = Wire.read();
  byteLo = Wire.read();
  uint16_t numSamples = ((int16_t)(int8_t) byteHi << 8) | (uint16_t)byteLo;

  /* ABCPeriod */
  byteHi = Wire.read();
  byteLo = Wire.read();
  uint16_t abcPeriod = ((int16_t)(int8_t) byteHi << 8) | (uint16_t)byteLo;

  /* Most propable that the sensor will not go into sleep mode, but to be insure...*/
  /* Wakeup */
  if(!(_wakeup(i2c_address))) {
    Serial.print("Failed to wake up sensor.");
    return;
  }

  /* Request values */
  error = WireRequestFrom(i2c_address, 1, METER_CONTROL /* from address*/, true /* STOP*/);    
  if(error != 1 ) {
    Serial.print("Failed to write to i2c_address. Error code : ");
    Serial.println(error);
    return;
  }
 
  uint8_t  meterControl = Wire.read();

  Serial.print("Measurement Mode: ");
  Serial.println(measMode);

  Serial.print("Measurement Period, sec: ");
  Serial.println(measPeriod);

  Serial.print("Number of Samples: ");
  Serial.println(numSamples);
  
  if((0U == abcPeriod) ||  (0xFFFFU == abcPeriod) || (meterControl & 0x02U)) {
    Serial.println("ABCPeriod: disabled");
  } else {
    Serial.print("ABCPeriod, hours: ");
    Serial.println(abcPeriod);  
  }  
  
  Serial.print("MeterControl: ");
  Serial.println(meterControl, HEX); 


}


void init_sunrise (uint8_t i2c_address,
                   uint16_t measPeriod /*measurement period in seconds (2-65535)*/,
                   uint16_t measNum /*number of measuremtns per period (2-32767)*/, 
                   bool enABC){

  //check if measPeriod and measNum are valid configurations


  /* I2C */
  /* Initialize I2C and use default pins defined for the board */
  reInitI2C();

  //configure ABC 
  setABC(i2c_address, enABC);

  //set measurement period to measPeriod
  writeRegister(i2c_address, 0x96, measPeriod);

  //set measurement number to measNum
  writeRegister(i2c_address, 0x98, measNum);
}



