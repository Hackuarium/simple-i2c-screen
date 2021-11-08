// Thread displaying if there is an error

#include <Arduino.h>
#include <ChNil.h>

#ifdef THR_ERROR


THD_FUNCTION(ThreadError, arg) {
  pinMode(THR_ERROR, OUTPUT);
  while (TRUE) {
    if (isError()) {
      digitalWrite(THR_ERROR, HIGH);
      chThdSleep(4520);(750);
      digitalWrite(THR_ERROR, LOW);
      chThdSleep(4520);(250);
    } else {
      digitalWrite(THR_ERROR, HIGH);
      chThdSleep(4520);(1000);
    }
  }
}

#endif
