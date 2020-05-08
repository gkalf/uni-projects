#include <stdio.h>
#include <stdlib.h>
#include "system.h"
#include "alt_types.h"
#include <time.h>
#include <unistd.h>
#include <sys/alt_timestamp.h>

//function for counting leading zeros
unsigned leading_zero_naive3(int x)
{
	int i;
    unsigned n = 0;
 //if input is all ones then return 32
    if (x == 0xFFFFFFFF) return 32;
 //for i=0:31
    for (i=0;i<32;i++){
//Check the most significant bit of the input
        if ((x&0x80000000) == 0x80000000){
        	n++;//if its ones increase counter and
        	x=x<<1;//shift left 1 time
        }else{
        	break;
        }
    }
    return n;// when it finish return the bit_position
}

void time_soft(int x)
{
  int i = 0;
  unsigned num_ticks = 0;
  unsigned time1, time2, timer_overhead;

 //Start Timer
  if(alt_timestamp_start() < 0) //start the timer
  {
    printf("Timer didnt start \n");// if it fails exit
    exit(0);
  }
  time1 = alt_timestamp();// now i calculate the overhead time
  time2 = alt_timestamp();//the time that take timer to start  and stop
  timer_overhead = time2 - time1;
  time1 = alt_timestamp();//ready to time the software function
  	  	  	  	  	  	 //counting begins
  unsigned int soft_result=leading_zero_naive3(x);

  time2 = alt_timestamp(); //stop timer
  num_ticks = time2 - time1 - timer_overhead;// calculate total time
  printf("Software result = %x\n, ticks = %u",soft_result,num_ticks);
}


void time_hardware(int x)
{
  unsigned num_ticks = 0;
  unsigned time1, time2, timer_overhead;

 //Start Timer
  if(alt_timestamp_start() < 0)//start timer
  {
    printf("Timer didnt start \n");
    exit(0);
  }
 //Get the number of clocks it takes record time stamp
  time1 = alt_timestamp();//Same calculation as software_timer
  time2 = alt_timestamp();
  timer_overhead = time2 - time1;
  time1 = alt_timestamp();   // timer begins

	unsigned int result=ALT_CI_COUNT_LEADING_ONES_0(x);

  time2 = alt_timestamp();   //timer stops
  num_ticks = time2 - time1 - timer_overhead;
  printf("Hardware result = %x,ticks = %u \n",result, num_ticks);
}


int main(void)
{
	int i;
	int x[8];//making a table with values that also used
	x[0]=0xFFFFFFFF;//in hardware simulation before
	x[1]=0xFFFFFFFE;
	x[2]=0xFFF00FFC;
	x[3]=0x80000000;
	x[4]=0x000FFFFF;
	x[5]=0x00000001;
	x[7]=0xFE123456;
	for(i=0;i<8;i++){

		time_hardware(x[i]);//testing it
		time_soft(x[i]);
        printf("Input is %x \n",x[i]);// print the input
        //print its here because for some reason caused less warnings
	}
  printf("**********************************************\n");
  printf("Program Complete.\n");

  exit(0);
  return 0;
}


