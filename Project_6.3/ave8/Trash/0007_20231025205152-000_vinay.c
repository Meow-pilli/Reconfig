#ifdef C	
#include "stdio.h"
#include "stdlib.h"
#endif

 

 

/* Global variables */
unsigned char buffer[8] = {0, 0, 0, 0, 0, 0, 0, 0};

 

/* Define pins for each segment of the seven-segment display (same as before) */
#define SEG_A 0
#define SEG_B 1
#define SEG_C 2
#define SEG_D 3
#define SEG_E 4
#define SEG_F 5
#define SEG_G 6
#define SEG_DP 7

 

/* Define pins for each digit on the display (same as before) */
#define DIGIT1 8
#define DIGIT2 9
#define DIGIT3 10
#define DIGIT4 11

 

/* Define a lookup table for displaying numbers 0-9 (same as before) */
int digitPatterns[10] = {
    0b00111111, // 0
    0b00000110, // 1
    0b01011011, // 2
    0b01001111, // 3
    0b01100110, // 4
    0b01101101, // 5
    0b01111101, // 6
    0b00000111, // 7
    0b01111111, // 8
    0b01101111  // 9
};

 

// Function to display a digit on the seven-segment display
void displayDigit(int digit) {
    if (digit >= 0 && digit <= 9) {
        PORTA = digitPatterns[digit];
    } else {
        // Display an error or blank digit
        PORTA = 0x00;
    }
}

 

// Cyber func=process
unsigned char ave8(unsigned char in0, bool in1) {
    /* ... (ave8 function remains the same) ... */

 

   /* Local variables declaration */
    int  out0_v, sum,  i;
if (in1==0){

/* Shift data to accommodate new input to be read */
        for (i = 7; i > 0; i--) { 	
            buffer[i] = buffer[i- 1];
        }}
else return 0;
  /* Read new input into buffer */
    buffer[0] = in0;

  /* Set first element of sum to compute the average => can save 1 loop iteration */
    sum= buffer[0]; 	
   /* Add up all the numbers in the buffer */
      for (i= 1; i< 8; i++) { 	
            sum += buffer[i]; 	
        }

/* Compute the average by dividing by 8 -> In HW  a divide by 8 (/8) = shift 3 times */
        out0_v= sum / 8;

  /* Output tuthe newly computed average to the output port */
       return(out0_v);
}

 

int main() {
    // Initialize seven-segment display
    initializeSevenSegment();

 

    while (1) {
        // Call the ave8 function to get the average
        unsigned char average = ave8(unsigned char in0, bool in1);

 

        // Display the average on the seven-segment display
        displayDigit(average);

 

        // Add delay or other logic as needed
        _delay_ms(1000); // Adjust the delay for the desired refresh rate
    }

 

    return 0;
}