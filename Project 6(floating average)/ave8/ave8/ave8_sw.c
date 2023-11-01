/******
**
**   ave8.c
**
** Description: The following program computes the average 
**                     of the 8 numbers being read
**
******/
#ifdef C    
#include "stdio.h"
#include "stdlib.h"
#endif  


/* Global variables */
unsigned char my_buffer[8] = {0, 0, 0, 0, 0, 0, 0, 0};
reg seg_7_reg ;

  // Cyber func=process  

unsigned long int ave8(unsigned char input, bool is_held) {

    /* Local variable declarations */
    int result, sum, i;
    unsigned long int waiting_time = 11110000;
    unsigned long int result_register;

    /* Shift data to accommodate new input to be read */
    if (is_held == 0) {
        for (i = 7; i > 0; i--) {
            my_buffer[i] = my_buffer[i - 1];

            for (unsigned long int r = 0; r < waiting_time; r++) {
                // Do nothing, just waste time
            }
        }
    }

    /* Read new input into the buffer */
    my_buffer[0] = input;

    /* Set the first element of sum to compute the average (can save 1 loop iteration) */
    sum = my_buffer[0];

    /* Add up all the numbers in the buffer */
    for (i = 1; i < 8; i++) {
        sum += my_buffer[i];
    }

    /* Compute the average by dividing by 8 (in hardware, divide by 8 is a shift right by 3 times) */
    result = sum / 8;

    /* Switch Case for Seven Segment */
    switch (result) {
    case 0   : seg_7_reg = 0b00000010000001000000100000011111;
    break;
    case 1   : seg_7_reg = 0b10011110000001000000100000011111;
    break;
    case 2   : seg_7_reg = 0b00100100000001000000100000011111;
    break;
    case 3   : seg_7_reg = 0b00001100000001000000100000011111;
    break;
    case 4   : seg_7_reg = 0b10011000000001000000100000011111;
    break;
    case 5   : seg_7_reg = 0b01001000000001000000100000011111;
    break;
    case 6   : seg_7_reg = 0b01000000000001000000100000011111;
    break;
    case 7   : seg_7_reg = 0b00011110000001000000100000011111;
    break;
    case 8   : seg_7_reg = 0b00000000000001000000100000011111;
    break;
    case 9   : seg_7_reg = 0b00001000000001000000100000011111;
    break;
    case 10  : seg_7_reg  = 0b00000011001111000000100000011111;
    break;
    case 11  : seg_7_reg  = 0b10011111001111000000100000011111;
    break;
    case 12  : seg_7_reg  = 0b00100101001111000000100000011111;
    break;
    case 13  : seg_7_reg  = 0b00001101001111000000100000011111;
    break;
    case 14  : seg_7_reg  = 0b10011001001111000000100000011111;
    break;
    case 15  : seg_7_reg  = 0b01001001001111000000100000011111;
    break;
    case 16  : seg_7_reg  = 0b01000001001111000000100000011111;
    break;
    case 17  : seg_7_reg  = 0b00011111001111000000100000011111;
    break;
    case 18  : seg_7_reg = 0b00000001001111000000100000011111;
    break;
    case 19  : seg_7_reg = 0b00001001001111000000100000011111;
    break;
    case 20  : seg_7_reg = 0b01001000010010000000100000011111;
    break;
    default  : seg_7_reg = 0b11111111111111111111111111111111;
    }

    /* Return the result */
    return(seg_7_reg);   
}

/* ANSI-C test bench */
#ifdef MY_CODE
int main() {
    FILE *input_file, *output_file;
    unsigned char input;
    int output;

    if ((input_file = fopen("input_data.txt", "r")) == NULL) {
        printf(" \"input_data.txt \" could not be opened.\n");
        exit(1);
    }

    if ((output_file = fopen("output_data.txt", "w")) == NULL) {
        printf(" \"output_data.txt \" could not be opened.\n");
        exit(1);
    }

    for (;;) {
        if (fscanf(input_file, "%c", &input) == EOF) break;
        output = ave8(input, 0); // Main computational function
        fprintf(output_file, "%d\n", output);
    }

    fclose(input_file);
    fclose(output_file);
}
#endif

