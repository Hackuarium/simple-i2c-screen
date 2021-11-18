
/***********************************************************
                Watchdog, Autoreboot Thread
Monitor the activity. Should be the lower priority process
If the led is "stable" (blinks 500 times per seconds), 
there are not too many activities on the microcontroler
************************************************************/
#include <Arduino.h>
#include <ChNil.h>

#include "BioParams.h"

#ifdef THR_EEPROM_LOGGER
  #include "EEPROMThread.h"
#endif

#ifdef THR_LCD
  #include "IncubatorLCDThread.h"
#endif

#ifdef THR_WIRE_MASTER
  #include "BioI2CThread.h"
  //#include "WireMasterCh.h"
#endif

#ifdef THR_SERIAL
  #include "BioSerialThread.h"
#endif

#ifdef THR_ERROR
  #include "BioErrorThread.h"
#endif

#ifdef THR_MONITORING
  #include "BioMonitoringThread.h"
#endif


/*******************************************************************************
                          NilRTOS Multithreading Table
      The higher in the Table The higher the priority
*******************************************************************************/
THD_TABLE_BEGIN

// logger should have priority to prevent any corruption of flash memory

#ifdef THR_EEPROM_LOGGER
THD_TABLE_ENTRY(waThreadLogger, NULL, ThreadLogger, NULL)
#endif

#ifdef THR_LCD
THD_TABLE_ENTRY(waThreadLcd, NULL, ThreadLcd, NULL)
#endif

#ifdef THR_WIRE_MASTER
  THD_TABLE_ENTRY(waThreadWireMaster, NULL, ThreadWireMaster, NULL)
#endif

#ifdef THR_SERIAL
THD_TABLE_ENTRY(waThreadSerial, NULL, ThreadSerial, NULL)
#endif

#ifdef THR_ERROR
THD_TABLE_ENTRY(waThreadError, NULL, ThreadError, NULL)
#endif    

#ifdef THR_MONITORING
THD_TABLE_ENTRY(waThreadMonitoring, NULL, ThreadMonitoring, NULL)
#endif

THD_TABLE_END