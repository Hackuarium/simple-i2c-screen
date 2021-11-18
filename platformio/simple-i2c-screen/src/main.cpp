#include <Arduino.h>
#include <ChNil.h>

#define SOFTWARE_VERSION "v1.0.3"

// Import constants
#include <BioParams.h>
// Import internal libraries
#include <BioHack.h>

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

  chBegin();
}

void loop() {}