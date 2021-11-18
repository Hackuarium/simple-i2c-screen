// part of the EEPROM is for the log
// we should be able to save and reload the log


// log is saved in the format ID / in1 / out1 / ... / in8 / out8
// ID is a sequential number
// We expect to add an entry every hour

#include <Arduino.h>
#include <ChNil.h>

#include "BioParams.h"
#include "Params.h"

#include "EEPROMLogger.h"

extern unsigned long lastLog;
extern uint16_t eepromLoggerID;
extern uint16_t eepromLoggerTimeBetween;

THD_FUNCTION ( ThreadLogger, arg ) {
  loggerInit();
  while (true) {
    chThdSleep(1000);
    
    // This should deal correctly with the overflow that happens after 49.7 days
    eepromLoggerTimeBetween= (millis() - lastLog) / 1000;
    

    int delayBetweenLog = LOG_INTERVAL;
    if (delayBetweenLog < 300) delayBetweenLog = 300;

    if (eepromLoggerTimeBetween >= delayBetweenLog) {
      writeLog();
    }
  }
}