#include <Arduino.h>
#include <ChNil.h>

THD_WORKING_AREA( waThreadPID, 256 );
THD_FUNCTION( ThreadPID, arg );