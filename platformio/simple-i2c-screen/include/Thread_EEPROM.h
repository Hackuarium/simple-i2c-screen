// part of the EEPROM is for the log
// we should be able to save and reload the log


// log is saved in the format ID / in1 / out1 / ... / in8 / out8
// ID is a sequential number
// We expect to add an entry every hour

#include <Arduino.h>
#include <ChNil.h>

#include "Params.h"
#include "Funcs.h"

#ifdef THR_EEPROM_LOGGER

THD_WORKING_AREA( waThreadLogger, 20 );
THD_FUNCTION( ThreadLogger, arg );

#endif
