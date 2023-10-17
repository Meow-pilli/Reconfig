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


/* Global variables */
unsigned char buffer[8]  = {0, 0, 0, 0, 0, 0, 0, 0};


  // Cyber func=process		
  unsigned  char ave8(unsigned char in0){

   /* Local variables declaration */
    int  out0_v, sum,  i; 


 /* Shift data to accommodate new input to be read */
        for (i = 7; i > 0; i--) { 	
            buffer[i] = buffer[i- 1];
        }
	
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

  /* Output the newly computed average to the output port */
       return(out0_v);	

 	
}

/*------------------------------------------------------  
 * ANSI-C test bench 
 *------------------------------------------------------  */
#ifdef C			// ifdef pre-compiler directive to separate SW from HW C
int main(){

    FILE *fp_i, *fp_o;
    int i;
    unsigned char in0
    int out0;

    if((fp_i = fopen("indata.txt", "r")) == NULL){
	printf(" \"indata.txt \" could not be opened.\n");
	exit(1);
    }
    if((fp_o = fopen("outdata.txt", "w")) == NULL){
	printf(" \"outdata.txt \" could not be opened.\n");
	exit(1);
    }

    for (;;){

        if (fscanf(fp_i, "%c", &in0) == EOF) break;
	   out0=ave8(in0);	    // Main computational function
	   fprintf(fp_o, "%d\n", out0);
    }

    fclose(fp_i);
    fclose(fp_o);
}
#endif