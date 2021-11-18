#include <Arduino.h>
#include <ChNil.h>

#include <Wire.h>
#include "BioParams.h"
#include "Params.h"

#ifdef THR_WIRE_MASTER

#include "BioI2C.h"

// setting ATmega328 as I2C master.
//#ifdef THR_WIRE_MASTER

// #define WIRE_MASTER_HOT_PLUG 1  // scan for new devices preventing sleep mode
// of I2C slaves

#include "BioSem.h"

extern TwoWire WireM;

THD_FUNCTION(ThreadWireMaster, arg) {
  chThdSleep(11000);

  unsigned int wireEventStatus = 0;

  WireM.begin();

  while (true) {
#ifdef WIRE_MASTER_HOT_PLUG
    // allows to log when devices are plugged in / out
    // not suitable for i2c slave sleep mode
    if (wireEventStatus % 25 == 0) {
      wireUpdateList();
    }
#endif
    wireEventStatus++;

    // chThdSleep(200);

    int stateParam = getParameter(PARAM_STATE);

    if (getParameter(PARAM_STATUS) != stateParam) {
      wireWriteIntRegister(SLAVE_ID, PARAM_STATUS, stateParam);
      wireWriteIntRegister(SLAVE_ID, PARAM_ENABLED, stateParam);
    }

    for (uint8_t i = 0; i < 25; i++) {
      setParameter(i, wireReadIntRegister(SLAVE_ID, i));
    }

    chThdSleep(5000);
  }
}

#endif