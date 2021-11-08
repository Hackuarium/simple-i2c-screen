#include <Arduino.h>
#include <ChNil.h>

// Import constants
#include <BioParams.h>
// Import internal libraries
#include <Hack.h>
#include "A_Parameters.h"

void checkParameters();

void setup() {

delay(500);
  
  setupParameters();
  checkParameters();
  chBegin();
}

void loop() {}