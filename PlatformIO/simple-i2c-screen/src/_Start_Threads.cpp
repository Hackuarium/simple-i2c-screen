#include <Arduino.h>
#include <ChNil.h>
#include <avr/wdt.h>

#include "Hack.h"
#include "Params.h"
#include "A_Parameters.h"

#ifdef THR_MONITORING
// Nice way to make some monitoring about activity. This should be the lower priority process
// If the led is "stable" (blinks 500 times per seconds) it means there are not too
// many activities on the microcontroler
THD_WORKING_AREA(waThreadMonitoring, 0);
THD_FUNCTION(ThreadMonitoring, arg) {
  // we activate the watchdog
  // we need to make a RESET all the time otherwise automatic reboot: wdt_reset();
  wdt_enable(WDTO_8S);

  byte turnOn = 0;
  pinMode(THR_MONITORING, OUTPUT);
  while (TRUE) {
    turnOn = ~turnOn;
    digitalWrite(THR_MONITORING, turnOn);
    chThdSleep(250);
    if (getParameter(PARAM_STATUS) != 99) {
      wdt_reset();
    }
    else {
      chThdSleep(750);
    }
  }
}
#endif

#ifdef THR_SERIAL
  #include "BioSerialThread.h"
#endif


THD_TABLE_BEGIN

THD_TABLE_ENTRY(waThreadSerial, NULL, ThreadSerial, NULL)

#ifdef THR_LCD
THD_TABLE_ENTRY(waThreadLcd, NULL, ThreadLcd, NULL)
#endif

#ifdef THR_ERROR
THD_TABLE_ENTRY(waThreadError, NULL, ThreadError, NULL)
#endif

THD_TABLE_ENTRY(waThreadPID, NULL, ThreadPID, NULL)

THD_TABLE_ENTRY(waThreadTemperature, NULL, ThreadTemperature, NULL)

#ifdef THR_EEPROM_LOGGER
THD_TABLE_ENTRY(waThreadLogger, NULL, ThreadLogger, NULL)
#endif

#ifdef THR_MONITORING
THD_TABLE_ENTRY(waThreadMonitoring, NULL, ThreadMonitoring, NULL)
#endif

THD_TABLE_END