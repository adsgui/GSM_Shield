/* GSM Shield example
 
 created 2011
 by Boris Landoni
 
 This example code is in the public domain.

 
 http://www.open-electronics.org
 http://www.futurashop.it
 */

#include <SoftwareSerial.h>
#include <GSM_Shield.h>
//for enable disable debug rem or not the string       #define DEBUG_PRINT
// definition of instance of GSM class
GSM gsm;



void setup() {
  Serial.begin(9600);
  Serial.println("system startup"); 
  //gsm.InitSerLine(9600);   //initialize serial 1 
  gsm.TurnOn(9600);              //module power on
  //gsm.InitSerLine(9600);   //initialize serial 1 
  gsm.InitParam(PARAM_SET_1);//configure the module  
  gsm.Echo(1);               //enable AT echo 
}


void loop()
{
  
    int ver;
    ver=gsm.LibVer();
    Serial.print("Response Ver "); 
    Serial.println(ver); 
    delay(50000);
}
    
