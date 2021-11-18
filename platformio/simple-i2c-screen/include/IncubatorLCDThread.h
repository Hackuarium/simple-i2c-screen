#include <Arduino.h>
#include <ChNil.h>
#include "BioParams.h"

#ifdef THR_LCD

THD_WORKING_AREA( waThreadLcd, 250 );
THD_FUNCTION( ThreadLcd, arg );

void updateCurrentMenu( int, uint8_t, uint8_t );
void updateCurrentMenu( int, uint8_t );
void lcdResults( int, bool );
void lcdStatus( int, bool );
void lcdNumberLine( uint8_t );
void lcdMenuHome( int, bool );
void lcdUtilities( int, bool );
void lcdMenuSettings( int, bool );
void lcdMenu();
/*
  UTIILITIES FUNCTIONS
*/
void lcdPrintBlank( uint8_t );
void setupRotary();
void rotate();
void eventRotaryPressed();

#endif