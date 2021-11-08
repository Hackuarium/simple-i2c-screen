#include <Arduino.h>
#include <ChNil.h>

THD_WORKING_AREA( waThreadError, 32 ); //tune the allocated mem (here extra is provided)
THD_FUNCTION( ThreadError, arg );