#include <Arduino.h>

#include "Funcs.h"

bool isError(int filter) {
  if ((getParameter(PARAM_ERROR) & filter) != 0)
    return true;
  return false;
}

bool isError() {
  return (getParameter(PARAM_ERROR) != 0);
}
