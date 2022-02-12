#include <Arduino.h>
#include <ChNil.h>

#include <Wire.h>
#include "Params.h"
#include "Funcs.h"

#ifdef THR_WIRE_MASTER

#include "I2C.h"

// #define WIRE_MASTER_HOT_PLUG 1  // scan for new devices preventing sleep mode
// of I2C slaves

// Include Semaphore
#include "Sem.h"

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

    wireWriteIntRegister(SLAVE_ID, PARAM_TEMP_TARGET,
                         getParameter(PARAM_TEMP_TARGET));
    wireWriteIntRegister(SLAVE_ID, PARAM_STATE, getParameter(PARAM_STATE));

    for (uint8_t i = 1; i <= 12; i++) {
      setParameter(i, wireReadIntRegister(SLAVE_ID, i));
    }

    chThdSleep(2000);
  }
}

#endif