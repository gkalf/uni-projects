#include <stdio.h>
#include <stdlib.h>
#include "system.h"
#include "alt_types.h"
#include <time.h>
#include <unistd.h>
#include <sys/alt_timestamp.h>

unsigned leading_zero_naive3(int x)
{
	int i;
    unsigned n = 0;
    if (x == 0xFFFFFFFF) return 32;
    for (i=0;i<32;i++){
        if ((x&0x80000000) == 0x80000000){
        	n++;
        	x=x<<1;
        }else{
        	break;
        }
    }
    return n;
}

void time_soft(int x)
{
  int i = 0;
  alt_u32 num_ticks = 0;
  alt_u32 time1, time2, timer_overhead;

 //Start Timer
  if(alt_timestamp_start() < 0)
  {
    printf("Timer didnt start \n");
    exit(0);
  }
 //Get the number of clocks it takes record time stamp
  time1 = alt_timestamp();
  time2 = alt_timestamp();
  timer_overhead = time2 - time1;
  time1 = alt_timestamp();          //Capture current value of timer

  unsigned int soft_result=leading_zero_naive3(0xFFFFFFF0);

  time2 = alt_timestamp();          //Capture current value of timer
  num_ticks = time2 - time1 - timer_overhead;
  printf("Software result = %x\n",soft_result);
  printf("Completed in %lu ticks\n", num_ticks);
}


void time_hardware(int x)
{
  int i = 0;
  alt_u32 num_ticks = 0;
  alt_u32 time1, time2, timer_overhead;

 //Start Timer
  if(alt_timestamp_start() < 0)
  {
    printf("Timer didnt start \n");
    exit(0);
  }
 //Get the number of clocks it takes record time stamp
  time1 = alt_timestamp();
  time2 = alt_timestamp();
  timer_overhead = time2 - time1;
  time1 = alt_timestamp();          //Capture current value of timer

	unsigned int result=ALT_CI_COUNT_LEADING_ONES_0(0xFFFFFFF0);

  time2 = alt_timestamp();          //Capture current value of timer
  num_ticks = time2 - time1 - timer_overhead;
  printf("Hardware result = %x\n",result);
  printf("Completed in %lu ticks\n", num_ticks);
}


int main(void)
{
	int x;
	x=0xFFFFFFF0;
	time_hardware(x);
	time_soft(x);
	//unsigned int soft_result=leading_zero_naive3(0xFFFFFFF0);
	printf("**********************************************\n");
  printf("Program Complete.\n");

  exit(0);
  return 0;
}


