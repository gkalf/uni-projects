#include <stdio.h>
#include <stdlib.h>
#include "system.h"
#include "alt_types.h"
#include <time.h>
#include <unistd.h>
//#include <sys/alt_timestamp.h>



//void leading_ones_timing(void)
//{
//  int i = 0;
//  alt_u32 num_ticks = 0;
//  alt_u32 time1, time2, timer_overhead;
//
// //Start Timer
//  if(alt_timestamp_start() < 0)
//  {
//    printf("Timer init failed \n");
//    exit(0);
//  }
// //Get the number of clocks it takes record time stamp
//  time1 = alt_timestamp();
//  time2 = alt_timestamp();
//  timer_overhead = time2 - time1;
//  time1 = alt_timestamp();          //Capture current value of timer
//  while(i < NUM_SAMPLES)            //Iterate through all samples
//  {
//    ones_software[i] = leading_ones_soft(numbers[i]); //fill array with number of ones
//    i++;                             //Increment counter
//  }
//  time2 = alt_timestamp();          //Capture current value of timer
//  num_ticks = time2 - time1 - timer_overhead;
//  printf("[Software] Number of clocks %lu\n", num_ticks);
//}


unsigned leading_zero_naive3(int x)
{
    unsigned n = 0;
    if (x == 0xFFFFFFFF) return 32;
    while (1) {
        if (x > 0) break;
        n ++;
        x <<= 1;
    }
    return n;
}

int main(void)
{
//	int i;
//	unsigned int sample[33];
//	for (i=0;i<=32;i++){
//		sample[i]=0xFFFFFFFF<<i;
//		//printf("Sample[%d] = %d \n",i,sample[i]);
//	}

	unsigned int result=ALT_CI_COUNT_LEADING_ONES_0(0xFFFFFFF0);
	unsigned int soft_result=leading_zero_naive3(0xFFFFFFF0);
	printf("%x,%x",result,soft_result);
	printf("**********************************************\n");
  printf("Program Complete.\n");

  exit(0);
  return 0;
}


