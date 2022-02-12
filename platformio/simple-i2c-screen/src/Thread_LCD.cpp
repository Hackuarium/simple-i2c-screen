#include <Arduino.h>
#include <ChNil.h>
//#include "BioFunc.h"
#include "Params.h"
#include "Funcs.h"
#include "Hack.h"

#ifdef THR_LCD

#ifdef THR_WIRE_MASTER
#include "I2C.h"
#endif

#include <LiquidCrystal.h>
#include <PinChangeInterrupt.h>
#include "libraries/RotaryEncoder/Rotary.h"

LiquidCrystal lcd(LCD_RS, LCD_E, LCD_D4, LCD_D5, LCD_D6, LCD_D7);

boolean rotaryPressed = false;
int rotaryCounter = 0;
boolean captureCounter =
    false;  // use when you need to setup a parameter from the menu
long lastRotaryEvent = millis();

// Rotary encoder is wired with the common to ground and the two
// outputs to pins 2 and 3.
Rotary rotary = Rotary(ROT_A, ROT_B);

byte noEventCounter = 0;
byte previousMenu = 0;

/*
  UTIILITIES FUNCTIONS
*/
byte accelerationMode = 0;
int lastIncrement = 0;
boolean rotaryMayPress =
    true;  // be sure to go through release. Seems to allow some deboucing

void updateCurrentMenu(int counter, byte maxValue, byte modulo) {
  byte currentMenu = getParameter(PARAM_MENU);
  if (captureCounter)
    return;
  if (counter < 0) {
    setParameter(PARAM_MENU, currentMenu + max(counter, -currentMenu % modulo));
  } else if (counter > 0) {
    setParameter(PARAM_MENU,
                 currentMenu + min(counter, maxValue - currentMenu % modulo));
  }
}

void updateCurrentMenu(int counter, byte maxValue) {
  updateCurrentMenu(counter, maxValue, 10);
}

void lcdPrintBlank(byte number) {
  for (byte i = 0; i < number; i++) {
    lcd.print(" ");
  }
}

void lcdResults(int counter, boolean doAction) {
  if (doAction)
    setParameter(PARAM_MENU, 0);
  if (noEventCounter < 2)
    lcd.clear();

  int nextLogEntry = getNextLogEntryID();
  updateCurrentMenu(counter, nextLogEntry - 1, 50);

  int start = getParameter(PARAM_MENU) % 100 - 1;
  boolean header = start == -1;
  int firstLogEntry = getFirstLogEntryID();

  start += firstLogEntry;

  for (int i = start; i < min(nextLogEntry, start + LCD_NB_ROWS); i++) {
    lcd.setCursor(0, i - start);
    if (header) {
      lcd.print(F("T1    T2    PID"));
      header = false;
    } else {
      lcd.print(((float)getParameterFromLog(i, PARAM_TEMP_EXT1)) / 100);
      lcd.setCursor(6, i - start);
      lcd.print(((float)getParameterFromLog(i, PARAM_TEMP_EXT2)) / 100);
      lcd.setCursor(12, i - start);
      lcd.print(getParameterFromLog(i, PARAM_PID));
    }
    lcdPrintBlank(6);
  }
}

void lcdStatus(int counter, boolean doAction) {
  if (doAction)
    setParameter(PARAM_MENU, 0);
  updateCurrentMenu(counter, 2);
  if (noEventCounter < 2)
    lcd.clear();
  byte menu = getParameter(PARAM_MENU) % 10;
  switch (menu) {
    case 0:
      lcd.setCursor(0, 0);
      lcd.print("T1:");
#ifdef THR_WIRE_MASTER
// lcd.print((double)wireReadIntRegister( SLAVE_ID, 0) / 100);
#endif
      lcd.print((double)getParameter(PARAM_TEMP_EXT1) / 100);
      lcd.print(" ");
      lcd.setCursor(8, 0);
      lcd.print("T2:");
#ifdef THR_WIRE_MASTER
// lcd.print((double)wireReadIntRegister( SLAVE_ID, 1) / 100);
#endif
      lcd.print((double)getParameter(PARAM_TEMP_EXT2) / 100);
      lcd.print(" ");
      lcdPrintBlank(2);
      lcd.setCursor(0, 1);
      lcd.print("TG:");
#ifdef THR_WIRE_MASTER
// lcd.print((double)wireReadIntRegister( SLAVE_ID, 4) / 100);
#endif
      lcd.print((double)getParameter(PARAM_TEMP_TARGET) / 100);
      lcdPrintBlank(2);
      lcd.setCursor(8, 1);
      lcd.print("PID:");
#ifdef THR_WIRE_MASTER
// lcd.print((double)wireReadIntRegister( SLAVE_ID, 5));
#endif
      lcd.print(getParameter(PARAM_PID));
      lcdPrintBlank(2);
      break;
    case 1:
      lcd.setCursor(0, 0);
      lcd.print("T3:");
#ifdef THR_WIRE_MASTER
// lcd.print((double)wireReadIntRegister( SLAVE_ID, 2) / 100);
#endif
      lcd.print((double)getParameter(PARAM_TEMP_EXT1) / 100);
      lcd.print(" ");
      lcd.setCursor(8, 0);
      lcd.print("PCB:");
#ifdef THR_WIRE_MASTER
// lcd.print((double)wireReadIntRegister( SLAVE_ID, 3) / 100);
#endif
      lcd.print((double)getParameter(PARAM_TEMP_EXT2) / 100);
      lcd.print(" ");
      lcdPrintBlank(2);
      lcd.setCursor(0, 1);
      lcd.print("TG:");
#ifdef THR_WIRE_MASTER
// lcd.print((double)wireReadIntRegister( SLAVE_ID, 4) / 100);
#endif
      lcd.print((double)getParameter(PARAM_TEMP_TARGET) / 100);
      lcdPrintBlank(2);
      lcd.setCursor(8, 1);
      lcd.print("PID:");
#ifdef THR_WIRE_MASTER
// lcd.print((double)wireReadIntRegister( SLAVE_ID, 5));
#endif
      lcd.print(getParameter(PARAM_PID));
      lcdPrintBlank(2);
      break;
  }
}

void lcdNumberLine(byte line) {
  lcd.print(getParameter(PARAM_MENU) % 10 + line + 1);
  if (line == 0) {
    lcd.print(".*");
  } else {
    lcd.print(". ");
  }
}

void lcdMenuHome(int counter, boolean doAction) {
  if (noEventCounter > 2)
    return;
  lcd.clear();
  byte lastMenu = 4;
  updateCurrentMenu(counter, lastMenu);
  for (byte line = 0; line < LCD_NB_ROWS; line++) {
    lcd.setCursor(0, line);
    if (getParameter(PARAM_MENU) % 10 + line <= lastMenu)
      lcdNumberLine(line);

    switch (getParameter(PARAM_MENU) % 10 + line) {
      case 0:
        if (getParameter(PARAM_STATE) == STATE_CONSTANT) {
          lcd.print(F("Stop control"));
          if (doAction) {
            setAndSaveParameter(PARAM_STATE, STATE_OFF);
          }
        } else {
          lcd.print(F("Start control"));
          if (doAction) {
            setAndSaveParameter(PARAM_STATE, STATE_CONSTANT);
          }
        }
        break;

      case 1:
        lcd.print(F("Settings"));
        if (doAction) {
          setParameter(PARAM_MENU, 10);
        }
        break;
      case 2:
        lcd.print(F("Status"));
        if (doAction) {
          setParameter(PARAM_MENU, 20);
        }
        break;
      case 3:
        lcd.print(F("Logs"));
        if (doAction) {
          setParameter(PARAM_MENU, 100);
        }
        break;
      case 4:
        lcd.print(F("Utilities"));
        if (doAction) {
          setParameter(PARAM_MENU, 40);
        }
        break;
    }
    doAction = false;
  }
}

void lcdUtilities(int counter, boolean doAction) {
  if (noEventCounter > 2)
    return;
  lcd.clear();
  byte lastMenu = 2;
  updateCurrentMenu(counter, lastMenu);

  for (byte line = 0; line < LCD_NB_ROWS; line++) {
    lcd.setCursor(0, line);
    if (getParameter(PARAM_MENU) % 10 + line <= lastMenu)
      lcdNumberLine(line);

    switch (getParameter(PARAM_MENU) % 10 + line) {
      case 0:
        lcd.print(F("Reboot"));
        if (doAction) {
          reboot();
        }
        break;
      case 1:
        lcd.print(F("Reset parameters"));
        if (doAction) {
          resetParameters();
          setParameter(PARAM_MENU, 0);
        }
        break;
      case 2:
        lcd.print(F("Main menu"));
        if (doAction) {
          setParameter(PARAM_MENU, 0);
        }
        break;
    }
    doAction = false;
  }
}

void lcdMenuSettings(int counter, boolean doAction) {
  byte lastMenu = 9;
  if (!captureCounter)
    updateCurrentMenu(counter, lastMenu);

  byte currentParameter = 0;
  int8_t currentParameterBit = -1;
  float currentFactor = 1;
  byte parameterNumber = 0;
  char currentUnit[5] = "\0";
  int maxValue = 32767;
  int minValue = -32768;

  lcd.clear();

  switch (getParameter(PARAM_MENU) % 10) {
    case 0:
      lcd.print(F("Default temp."));
      currentParameter = PARAM_TEMP_TARGET;
      currentFactor = 0.01;
      minValue = -1000;
      maxValue = 5000;
      strcpy(currentUnit, "\xDF\x43");
      break;
    case 1:
      lcd.print(F("External fan"));
      // currentParameter = PARAM_FAN_EXTERNAL;
      minValue = 0;
      maxValue = 255;
      strcpy(currentUnit, "\0");
      break;
    case 2:
      lcd.print(F("Internal fan"));
      // currentParameter = PARAM_FAN_INTERNAL;
      minValue = 0;
      maxValue = 255;
      strcpy(currentUnit, "\0");
      break;
    case 3:
      lcd.print(F("Temperature 1"));
      // currentParameter = PARAM_TEMP_TARGET_1;
      currentFactor = 0.01;
      minValue = -1000;
      maxValue = 5000;
      strcpy(currentUnit, "\xDF\x43");
      break;
    case 4:
      lcd.print(F("Waiting time 1"));
      // currentParameter = PARAM_TIME_1;
      minValue = 0;
      maxValue = 10000;
      strcpy(currentUnit, "min.\0");
      break;
    case 5:
      lcd.print(F("Temperature 2"));
      // currentParameter = PARAM_TEMP_TARGET_2;
      currentFactor = 0.01;
      minValue = -1000;
      maxValue = 5000;
      strcpy(currentUnit, "\xDF\x43");
      break;
    case 6:
      lcd.print(F("Waiting time 2"));
      // currentParameter = PARAM_TIME_2;
      minValue = 0;
      maxValue = 10000;
      strcpy(currentUnit, "min.\0");
      break;
    case 7:
      lcd.print(F("Temperature 3"));
      // currentParameter = PARAM_TEMP_TARGET_3;
      currentFactor = 0.01;
      minValue = -1000;
      maxValue = 5000;
      strcpy(currentUnit, "\xDF\x43");
      break;
    case 8:
      lcd.print(F("Waiting time 3"));
      // currentParameter = PARAM_TIME_3;
      minValue = 0;
      maxValue = 10000;
      strcpy(currentUnit, "min\0");
      break;
    /*
      case 9:
      lcd.print(F("Rotary inverse"));
      currentParameter = PARAM_FLAGS;
      currentParameterBit = PARAM_FLAG_INVERT_ROTARY;
      minValue = 0;
      maxValue = 1;
      break;
    */
    case 9:
      lcd.print(F("Main menu"));
      if (doAction) {
        setParameter(PARAM_MENU, 1);
      }
      return;
  }

  if (doAction) {
    captureCounter = !captureCounter;
    if (!captureCounter) {
      setAndSaveParameter(currentParameter, getParameter(currentParameter));
    }
  }
  if (captureCounter) {
    if (currentParameterBit == -1) {
      int newValue = getParameter(currentParameter) + counter;
      setParameter(currentParameter, max(min(maxValue, newValue), minValue));
    } else {  // flag kind so either true or false
      if (counter > 0) {
        setParameterBit(currentParameter, currentParameterBit);
      } else if (counter < 0) {
        clearParameterBit(currentParameter, currentParameterBit);
      }
    }
  }

  lcd.setCursor(0, 1);
  if (millis() % 1000 < 500 && captureCounter) {
    lcd.print((char)255);
  } else {
    lcd.print(" ");
  }
  switch (getParameter(PARAM_MENU) % 10) {
    default:
      if (currentParameterBit == -1) {
        if (currentFactor == 1) {
          lcd.print((getParameter(currentParameter)));
        } else {
          lcd.print(((float)getParameter(currentParameter)) * currentFactor);
        }
      } else {  // it is a flag so we need to display true or false
        if (getParameterBit(currentParameter, currentParameterBit)) {
          lcd.print("true");
        } else {
          lcd.print("false");
        }
      }
      lcd.print(" ");
      lcd.print(currentUnit);
  }
}

/*
  UTIILITIES FUNCTIONS
*/

void rotate() {
  int increment = 0;

  byte direction = rotary.process();

  if (direction == DIR_CW) {
    increment = -1;
  } else if (direction == DIR_CCW) {
    increment = 1;
  }

  if (increment == 0)
    return;

  long unsigned current = millis();
  long unsigned diff = current - lastRotaryEvent;
  lastRotaryEvent = current;

  if (diff < 50) {
    accelerationMode += 5;
    if (accelerationMode > 50)
      accelerationMode = 50;
  } else {
    accelerationMode = 0;
  }

  if (getParameterBit(PARAM_FLAGS, PARAM_FLAG_INVERT_ROTARY) == 1) {
    increment *= -1;
  }

  if (accelerationMode > 4) {
    rotaryCounter += (increment * accelerationMode);
  } else {
    if (accelerationMode == 0) {
      rotaryCounter += increment;
    }
  }
}

void eventRotaryPressed() {
  Serial.println(F("Press"));
  cli();
  byte state = digitalRead(ROT_PUSH);
  long unsigned eventMillis = millis();
  if (state == 0) {
    if (rotaryMayPress && ((eventMillis - lastRotaryEvent) > 200)) {
      rotaryPressed = true;
      rotaryMayPress = false;
      lastRotaryEvent = eventMillis;
    }
  } else {
    rotaryMayPress = true;
    if ((eventMillis - lastRotaryEvent) > 5000) {
      reboot();
    }
  }
  sei();
}

void setupRotary() {
  attachPCINT(digitalPinToPCINT(ROT_A), rotate, CHANGE);
  attachPCINT(digitalPinToPCINT(ROT_B), rotate, CHANGE);
  pinMode(ROT_PUSH, INPUT_PULLUP);
  attachPCINT(digitalPinToPCINT(ROT_PUSH), eventRotaryPressed, CHANGE);
}

void lcdMenu() {
  byte currentMenu = getParameter(PARAM_MENU);
  if (previousMenu != currentMenu) {  // this is used to clear screen from
                                      // external process for example
    noEventCounter = 0;
    previousMenu = currentMenu;
  }
  if (rotaryCounter == 0 && !rotaryPressed) {
    if (noEventCounter < 32760)
      noEventCounter++;
  } else {
    noEventCounter = 0;
  }
  if (noEventCounter > 250) {
    if (currentMenu - currentMenu % 10 != 20)
      currentMenu = 20;
    captureCounter = false;
  }
  boolean doAction = rotaryPressed;
  rotaryPressed = false;
  int counter = rotaryCounter;
  rotaryCounter = 0;

  switch (currentMenu < 100 ? currentMenu - currentMenu % 10
                            : currentMenu - currentMenu % 100) {
    case 0:
      lcdMenuHome(counter, doAction);
      break;
    case 10:
      lcdMenuSettings(counter, doAction);
      break;
    case 20:
      lcdStatus(counter, doAction);
      break;
    case 40:
      lcdUtilities(counter, doAction);
      break;
    case 100:
      lcdResults(counter, doAction);
      break;
  }
}

THD_FUNCTION(ThreadLcd, arg) {
  // initialize the library with the numbers of the interface pins

  setupRotary();
  pinMode(LCD_BL, OUTPUT);
  digitalWrite(LCD_BL, HIGH);  // backlight
  chThdSleep(10);
  lcd.begin(LCD_NB_COLUMNS, LCD_NB_ROWS);
  lcd.begin(LCD_NB_COLUMNS, LCD_NB_ROWS);

  setParameter(PARAM_MENU, 0);

  while (true) {
    lcdMenu();
    chThdSleep(40);
  }
}

#endif