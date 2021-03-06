#include <Arduino.h>
#include <ChNil.h>

#define SOFTWARE_VERSION "v1.0.3"

// Import constants
#include <Params.h>
// Import internal libraries
#include <Hack.h>

void checkParameters();
void initParameters();

/*********
   SETUP
 *********/
void setup() {
  delay(1000);
  Serial.begin(9600);
  delay(1000);
  setupParameters();

  chFillStacks();
  chBegin();
}

void loop() {}