/**************************************************
**
**   ave8.c
**
** Description: The following program computes the average 
**                     of the 8 numbers being read
**
****************************************************/
#ifdef C	
#include "stdio.h"
#include "stdlib.h"
#endif	

unsigned char buffer[8]  = {0, 0, 0, 0, 0, 0, 0, 0};

  // Cyber func=process		
  unsigned  char ave8(unsigned char in0){
    int  out0_v, sum,  i, unit_digit; 

    for (i = 7; i > 0; i--) { 	
      buffer[i] = buffer[i- 1];
    }

    buffer[0] = in0;
    sum= buffer[0]; 	

    for (i= 1; i< 8; i++) { 	
      sum += buffer[i]; 	
    }

    out0_v= sum / 8; 
    /*return(out0_v); */
    seven_segment(out0_v);
    return unit_digit;
 	
}

unsigned char seven_segment(unsigned char avg){
  int unit_digit;
  switch (avg){
    case 0:
      unit_digit = 1;
    break;

    default:
      unit_digit = 5;
    break;
  }
return unit_digit;
}