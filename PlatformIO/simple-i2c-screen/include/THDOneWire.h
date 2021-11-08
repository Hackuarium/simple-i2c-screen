#include <Arduino.h>
#include <ChNil.h>

#include "BioOneWire.h"
#include "BioSem.h"

THD_WORKING_AREA(waThreadTemperature, 300);
THD_FUNCTION(ThreadTemperature, arg);


void getTemperature( OneWire, int, uint8_t );
void oneWireInfoSS( OneWire , Print* );
void getTemperature( OneWire, int, uint8_t );
//bus info function
void oneWireInfo( Print* );
void oneWireInfoSS( OneWire, Print* );