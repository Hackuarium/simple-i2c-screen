/*********************************************
   This file is used to declare the parameters
   table used by the program.

   We use the EEPROM for saving the parameters
   changed by the user during the functionment
   of the Bioreactor.

   The parameter are loaded during the boot.

   All change to important parameters are saved
   to the EEPROM
 *********************************************/
#include <Arduino.h>
#include <ChNil.h>

/*******************************************************************************
      I2C-SCREEN POROJECT
*******************************************************************************/

/******************************
  THREADS
*******************************/

#define THR_EEPROM_LOGGER 1  // Define EEPROM Logger
#define THR_LCD 1            // Define LCD
#define THR_SERIAL 1         // Define Serial
#define THR_WIRE_MASTER 1    // Define board like Master I2C
#define THR_ERROR 1          // Define the pin to blink if there is an error
#define THR_MONITORING 1     // Define the pin to blink if everything goes
// well

/*******************************
  PINS
*******************************/

// MONITORING Thread
#define MONITORING_LED 13  // Define the pin to blink if everything goes well

// ERROR Thread
#define OUT_ERROR 20  // Define the pin to blink if there is an error

// LCD Thread
#define LCD_E A1
#define LCD_RS A0
#define LCD_D4 A2
#define LCD_D5 2
#define LCD_D6 3
#define LCD_D7 4
#define LCD_BL A3  // Back light

#define ROT_A 6
#define ROT_B 5
#define ROT_PUSH 7

/******************************
  SERIAL, LOGGER AND DEBUGGERS
*******************************/

#define MAX_PARAM 26

#define INT_MAX_VALUE 32767
#define INT_MIN_VALUE -32768
#define LONG_MAX_VALUE 2147483647

// We save the parameter from byte 0 of EEPROM
#define EE_START_PARAM 0
// The last parameter is stored at byte 50-51
#define EE_LAST_PARAM (MAX_PARAM * 2 - 1)

#define EE_QUALIFIER (MAX_PARAM * 2)

#define EEPROM_MIN_ADDR 0
#define EEPROM_MAX_ADDR 1023

#define SERIAL_BUFFER_LENGTH 32
#define SERIAL_MAX_PARAM_VALUE_LENGTH 32

// Setting ATmega328 as I2C slave.
// Use dedicated I2C pins
#ifndef I2C_HARDWARE
#define I2C_HARDWARE 1
#endif

#define NB_PARAMETERS_LINEAR_LOGS 6

// Interval in (s) between logs logger
#define LOG_INTERVAL 900  // We log every 15 minutes

#define LOG_ENTRY_LENGTH (NB_PARAMETERS_LINEAR_LOGS + 2) * 2
#define NUMBER_LOGS 960 / LOG_ENTRY_LENGTH

#define FIRST_ADDRESS 64
#define LAST_ADDRESS 1023

/*******************************
  PARAMETERS
*******************************/

#define PARAM_TEMP_EXT1 0  // A - temperature over to PCB
#define PARAM_TEMP_EXT2 1  // B - temperature of the solution
#define PARAM_TEMP_EXT3 2  // C - temperature of the solution

#define PARAM_TEMP_PCB 3     // D - temperature of the PID
#define PARAM_TEMP_TARGET 4  // E - target temperature of the liquid
#define PARAM_PID 5          // F - heating amount of energy

/*******************************
  PARAMETER - FLAG DEFINITION
*******************************/

#define PARAM_ERROR 23  // X - errors
// extern const int PARAM_ERROR;
#define FLAG_TEMP_PCB_PROBE_ERROR \
  0  // pcb probe failed (one wire not answering)
#define FLAG_TEMP_EXT1_PROBE_ERROR \
  1  // external temperature 1 probe failed (one wire not answering)
#define FLAG_TEMP_EXT2_PROBE_ERROR \
  2  // external temperature 2 probe failed (one wire not answering)
#define FLAG_TEMP_EXT3_PROBE_ERROR \
  3  // external temperature 3 probe failed (one wire not answering)
#define FLAG_TEMP_PCB_RANGE_ERROR 3   // temperature of pcb is outside range
#define FLAG_TEMP_EXT1_RANGE_ERROR 4  // temperature of liquid is outside range
#define FLAG_TEMP_EXT2_RANGE_ERROR 5  // temperature of liquid is outside range
#define FLAG_TEMP_EXT3_RANGE_ERROR 6  // temperature of liquid is outside range
#define FLAG_TEMP_TARGET_RANGE_ERROR 7  // target temperature is outside range
#define MASK_TEMP_ERROR 0b11111111  // where are the bit for temperature error

#define PARAM_ENABLED 24  // Y - enabled service (set by user)
#define PARAM_STATUS 25   // Z - currently active service

// the following flags are defined for PARAM_STATUS and PARAM_ENABLED
#define FLAG_PID_CONTROL 0  // 0 to stop PID

/*******************************
  OTHERS VARIABLES
*******************************/

// value that should not be taken into account
// in case of error the parameter is set to this value
#define ERROR_VALUE -32768

/*******************************************************************************
      WireMaster.h
*******************************************************************************/

#define SLAVE_ID 8

#define I2C_TIMEOUT 10
#define I2C_SLOWMODE 1
#define WIRE_MAX_DEVICES 8

/*******************************************************************************
  IncubatorLCDThread
*******************************************************************************/

#define LCD_NB_ROWS 2
#define LCD_NB_COLUMNS 16

#define PARAM_FLAGS 17
#define PARAM_FLAG_INVERT_ROTARY 1  // invert rotary direction

#define PARAM_CURRENT_TIME 20

#define STATE_OFF 0
#define STATE_CONSTANT 1
#define STATE_PROGRAM 2

#define PARAM_STATE 26  // current state
#define PARAM_MENU 27   // current menu
#define PARAM_SEND 28   // Send I2C Message