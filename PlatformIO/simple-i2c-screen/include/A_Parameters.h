#include <Arduino.h>
#include <ChNil.h>

// Define Sensors pins

#define TEMPERATURE_EXT_1    A2
#define TEMPERATURE_EXT_2    A1
#define TEMPERATURE_PCB      A3
#define FAN_EXTERNAL         6
#define FAN_INTERNAL         11

#define HBRIDGE_INH  MISO
#define HBRIDGE_IN1  SCK
#define HBRIDGE_IN2  MOSI

#define THR_ERROR 13 // define the pin to blink if there is an error


// Define Threads
#define THR_SERIAL      1
#define THR_EEPROM_LOGGER 1
#define NUMBER_PARAMETERS_TO_LOG 6  // defines the number of parameters to log
// allowed values: 1, 2, 3, 4, 6, 8, 10, 14
// 2 first entries in the log will be logID and secodns between
#define LOG_INTERVAL 900   // we log every 15 minutes
// we can store 60 entries in the log


// Define parameters
#define MAX_PARAM       26

#define PARAM_TEMP_EXT_1    0
#define PARAM_TEMP_EXT_2    1
#define PARAM_TEMP_TARGET   2
#define PARAM_HBRIDGE_PID   3

#define PARAM_FAN_EXTERNAL  4
#define PARAM_FAN_INTERNAL  5

#define PARAM_TEMP_PCB      8


#define PARAM_TEMP_TARGET_1  10
#define PARAM_TIME_1         11
#define PARAM_TEMP_TARGET_2  12
#define PARAM_TIME_2         13
#define PARAM_TEMP_TARGET_3  14
#define PARAM_TIME_3         15


#define PARAM_FLAGS           17
#define PARAM_FLAG_INVERT_ROTARY 0  // invert rotary direction

#define PARAM_CURRENT_TIME   20
#define PARAM_STATE          21 // current state

#define STATE_OFF        0
#define STATE_CONSTANT   1
#define STATE_PROGRAM    2

#define PARAM_MENU          22 // current menu

/******************
   FLAG DEFINITION
 ******************/
#define PARAM_ENABLED      23
#define FLAG_FAN_EXTERNAL_CONTROL     0
#define FLAG_FAN_INTERNAL_CONTROL     1
#define FLAG_PID_CONTROL              2

#define PARAM_ERROR        24
#define FLAG_TEMP_PCB_PROBE_ERROR        0   // pcb probe failed (one wire not answering)
#define FLAG_TEMP_EXT_1_PROBE_ERROR      1   // ext probe 1 failed (one wire not answering)
#define FLAG_TEMP_EXT_2_PROBE_ERROR      2   // ext probe 2 failed (one wire not answering)

#define FLAG_TEMP_PCB_RANGE_ERROR        3   // temperature of pcb is outside range
#define FLAG_TEMP_EXT_1_RANGE_ERROR      4   // temperature of liquid is outside range
#define FLAG_TEMP_EXT_2_RANGE_ERROR      5   // temperature of liquid is outside range
#define FLAG_TEMP_TARGET_RANGE_ERROR     6   // target temperature is outside range

#define PARAM_STATUS             25  // current status