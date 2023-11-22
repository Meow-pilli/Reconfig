#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/mman.h>
#include "hwlib.h"
#include "socal/socal.h"
#include "socal/hps.h"
#include "socal/alt_gpio.h"
#include "hps_0.h"
 
#define HW_REGS_BASE ( ALT_STM_OFST )
#define HW_REGS_SPAN ( 0x04000000 )
#define HW_REGS_MASK ( HW_REGS_SPAN - 1 )
void separateDigits(int time, int *tens, int *ones);
 
volatile unsigned long *h2p_lw_hex0_addr=NULL;
volatile unsigned long *h2p_lw_hex1_addr=NULL;
volatile unsigned long *h2p_lw_hex2_addr=NULL;
volatile unsigned long *h2p_lw_hex3_addr=NULL;
volatile unsigned long *h2p_lw_hex4_addr=NULL;
volatile unsigned long *h2p_lw_hex5_addr=NULL;
static unsigned char szMap[] = {
        64, 121, 36, 48, 25, 18, 2, 120, 0 ,16 
    };
 
void separateDigits(int time, int *tens, int *ones) {
    *tens = time / 10;
    *ones = time % 10;
}
int main() {
 
	void *virtual_base;
	int fd;
	int hours = 0, minutes = 0, seconds = 0;
 
    int hoursTens, hoursOnes, minutesTens, minutesOnes, secondsTens, secondsOnes;
 
	// map the address space for the LED registers into user space so we can interact with them.
	// we'll actually map in the entire CSR span of the HPS since we want to access various registers within that span
 
	if( ( fd = open( "/dev/mem", ( O_RDWR | O_SYNC ) ) ) == -1 ) {
		printf( "ERROR: could not open \"/dev/mem\"...\n" );
		return( 1 );
	}
 
	virtual_base = mmap( NULL, HW_REGS_SPAN, ( PROT_READ | PROT_WRITE ), MAP_SHARED, fd, HW_REGS_BASE );
 
	if( virtual_base == MAP_FAILED ) {
		printf( "ERROR: mmap() failed...\n" );
		close( fd );
		return( 1 );
	}
	h2p_lw_hex0_addr=virtual_base + ( ( unsigned long  )( ALT_LWFPGASLVS_OFST + SEVEN_SEGMENT_0_BASE) & ( unsigned long)( HW_REGS_MASK ) );
	h2p_lw_hex1_addr=virtual_base + ( ( unsigned long  )( ALT_LWFPGASLVS_OFST + SEVEN_SEGMENT_1_BASE) & ( unsigned long)( HW_REGS_MASK ) );
	h2p_lw_hex2_addr=virtual_base + ( ( unsigned long  )( ALT_LWFPGASLVS_OFST + SEVEN_SEGMENT_2_BASE) & ( unsigned long)( HW_REGS_MASK ) );
	h2p_lw_hex3_addr=virtual_base + ( ( unsigned long  )( ALT_LWFPGASLVS_OFST + SEVEN_SEGMENT_3_BASE) & ( unsigned long)( HW_REGS_MASK ) );
	h2p_lw_hex4_addr=virtual_base + ( ( unsigned long  )( ALT_LWFPGASLVS_OFST + SEVEN_SEGMENT_4_BASE) & ( unsigned long)( HW_REGS_MASK ) );
	h2p_lw_hex5_addr=virtual_base + ( ( unsigned long  )( ALT_LWFPGASLVS_OFST + SEVEN_SEGMENT_5_BASE) & ( unsigned long)( HW_REGS_MASK ) );	
 
	    while (1) {
        // Separating individual digits for hours, minutes, and seconds
        separateDigits(hours, &hoursTens, &hoursOnes);
        separateDigits(minutes, &minutesTens, &minutesOnes);
        separateDigits(seconds, &secondsTens, &secondsOnes);
        *h2p_lw_hex0_addr = szMap[secondsOnes];
        *h2p_lw_hex1_addr = szMap[secondsTens];
        *h2p_lw_hex2_addr = szMap[minutesOnes];
        *h2p_lw_hex3_addr = szMap[minutesTens];
        *h2p_lw_hex4_addr = szMap[hoursOnes];
        *h2p_lw_hex5_addr = szMap[hoursTens];
        // Printing the separated values
        printf("Time: %d%d:%d%d:%d%d\n", hoursTens, hoursOnes, minutesTens, minutesOnes, secondsTens, secondsOnes);
 
        // Incrementing time
        seconds++;
        if (seconds == 60) {
            seconds = 0;
            minutes++;
            if (minutes == 60) {
                minutes = 0;
                hours++;
                if (hours == 24) {
                    hours = 0;
                }
            }
        }
 
        // Sleep for 1 second
        sleep(1);
 
    }

 
	// clean up our memory mapping and exit
	if( munmap( virtual_base, HW_REGS_SPAN ) != 0 ) {
		printf( "ERROR: munmap() failed...\n" );
		close( fd );
		return( 1 );
	}
 
	close( fd );
 
	return( 0 );
 
}
