#include <Arduino.h>
//#include <TimeLib.h>

#include "BioOneWire.h"
#include "Params.h"
#include "Funcs.h"
#include "SSTLogger.h"
#include "Weight.h"
#include "libraries/time/TimeLib.h"

void printGeneralParameters(Print* output) {
  output->print(F("EPOCH:"));
  output->println(now());
  output->print(F("millis:"));
  output->println(millis());
#ifdef THR_SST_LOGGER
  output->print(F("Next log index:"));
  output->println(nextEntryID);
  output->print(F("FlashID:"));
  sst2.printFlashID(output);
#endif
}

void processSpecificCommand(char* data, char* paramValue, Print* output) {
  switch (data[0]) {
#ifdef THR_SST_LOGGER
    case 'l':
      processLoggerCommand(data[1], paramValue, output);
      break;
#endif
#if THR_ONEWIRE
    case 'o':
      oneWireInfo(output);
#endif
      break;
    case 'p':
      printGeneralParameters(output);
      break;
    case 't':
      output->print(F("State: "));
      output->println(getParameter(PARAM_STATE));

      output->print(F("Error: "));
      output->println(getParameter(PARAM_ERROR), BIN);
      for (byte i = 0; i < 8; i++) {
        output->print(i);
        output->print(": ");
        output->println(getParameterBit(PARAM_ERROR, i));
      }
      break;
  }
}

void printSpecificHelp(Print* output) {
#ifdef THR_SST_LOGGER
  output->println(F("(l)og"));
#endif
#ifdef THR_ONEWIRE
  output->println(F("(o)ne-wire"));
#endif
  output->println(F("(p)aram"));
  output->println(F("s(t)atus"));
}
