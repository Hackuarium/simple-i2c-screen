#include <Arduino.h>
#include <ChNil.h>
#include <Wire.h>

#include "BioParams.h"

// setting ATmega328 as I2C master.
#ifdef THR_WIRE_MASTER

THD_WORKING_AREA(waThreadWireMaster, 0);
THD_FUNCTION(ThreadWireMaster, arg);

#endif