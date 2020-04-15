#include "fsl_debug_console.h"
#include "fsl_port.h"
#include "fsl_gpio.h"
#include "fsl_common.h"
#include "board.h"
#include "pin_mux.h"
#include "clock_config.h"
#include "cmsis_os.h"
#include "ELEC422.h"
#include "string.h"
#include "stdlib.h"
#include "fsl_pdb.h"
#include "fsl_adc16.h"
#include "MK64F12.h"
/*******************************************************************************
 * Definitions
 ******************************************************************************/
#define PDB_BASE PDB0
#define PDB_IRQ_ID PDB0_IRQn
#define PDB_IRQ_HANDLER PDB0_IRQHandler

#define PDB_ADC_TRIGGER_CHANNEL 0U /* For ADC0. */
#define PDB_ADC_PRETRIGGER_CHANNEL 0U  /* For ADC0_SC1[0]. */

#define ADC_BASE ADC0
#define ADC_CHANNEL_GROUP 0U
#define ADC_USER_CHANNEL_POT1 12U
#define ADC_USER_CHANNEL_POT2 13U
#define ADC_IRQ_ID ADC0_IRQn
#define ADC_IRQ_HANDLER ADC0_IRQHandler
 
 
 #define Start_timer  0
 #define Stop_timer   1
 #define Delete_timer 2
 
 
void Thread_1 (void const *argument);                  // thread function 1
void Thread_2 (void const *argument);                  // thread function 2
void Thread_3 (void const *argument);                  // thread function 3
void Thread_4 (void const *argument);                  // thread function 4
void Thread_5 (void const *argument);                  // thread function 5
void Thread_6 (void const *argument);                  // thread function 6
void Thread_7 (void const *argument);                  // thread function 7

osThreadId main_id;
osThreadId tid_Thread_1;                               // thread id 1
osThreadId tid_Thread_2;                               // thread id 2
osThreadId tid_Thread_3;                               // thread id 3
osThreadId tid_Thread_4;                               // thread id 4
osThreadId tid_Thread_5;                               // thread id 5
osThreadId tid_Thread_6;                               // thread id 5
osThreadId tid_Thread_7;                               // thread id 5

osThreadDef (Thread_1, osPriorityNormal, 1, 0);        // thread object 1
osThreadDef (Thread_2, osPriorityAboveNormal, 1, 0);        // thread object 2
osThreadDef (Thread_3, osPriorityNormal, 1, 0);        // thread object 3
osThreadDef (Thread_4, osPriorityNormal, 1, 0);        // thread object 4
osThreadDef (Thread_5, osPriorityNormal, 1, 0);        // thread object 5
osThreadDef (Thread_6, osPriorityNormal, 1, 0);        // thread object 5
osThreadDef (Thread_7, osPriorityNormal, 1, 0);        // thread object 5

void callback(void const *param);
osTimerDef(timer0_handle,callback);

osMutexId               VCP_mutex;
osMutexDef             (VCP_mutex);

osMutexId               ADC_mutex;
osMutexDef						 (ADC_mutex);

#define MAILQUEUE_OBJECTS      200                            // number of Message Queue Objects

typedef struct {                                                // object data type
  char Buf[128];
  uint8_t Idx;
	bool sw2_state;
	bool sw3_state;
	float POT1_value;
	float POT2_value;
	bool POT_state; // 0 is POT1 and 1 is POT2
} MAILQUEUE_OBJ_t;

osMailQId qid_MailQueue;                                        // mail queue id
osMailQDef (MailQueue, MAILQUEUE_OBJECTS, MAILQUEUE_OBJ_t);     // mail queue object

#define MSGQUEUE_OBJECTS 16

osMessageQId mid_MsgQueue;                                      // message queue id
osMessageQDef (MsgQueue, MSGQUEUE_OBJECTS, uint32_t);     // message queue object

/*******************************************************************************
 * Code
 ******************************************************************************/
/*!
 * @brief Interrupt service fuction of switch.
 *
 * This function toggles the LED
 */
void BOARD_SW3_IRQ_HANDLER(void)
{
    /* Clear external interrupt flag. */
    GPIO_ClearPinsInterruptFlags(BOARD_SW3_GPIO, 1U << BOARD_SW3_GPIO_PIN);
		osSignalSet(tid_Thread_4,0x02);

    /* Change state of button. */
}

void BOARD_SW2_IRQ_HANDLER(void)
{
    /* Clear external interrupt flag. */
    GPIO_ClearPinsInterruptFlags(BOARD_SW2_GPIO, 1U << BOARD_SW2_GPIO_PIN);
		osSignalSet(tid_Thread_3,0x01);
	/* Change state of button. */
}
volatile bool g_PdbDelayInterruptFlag=false;
volatile float g_AdcConvValue;
void PDB_IRQ_HANDLER(void)
{
		/* Clear interrupt flag.*/
    PDB_ClearStatusFlags(PDB_BASE, kPDB_DelayEventFlag);
		/*Change flag to true to specify that received signal*/
    g_PdbDelayInterruptFlag = true;
}

void ADC_IRQ_HANDLER(void){
		/* Clear interrupt flag.*/
    g_AdcConvValue = ADC16_GetChannelConversionValue(ADC_BASE, ADC_CHANNEL_GROUP);
		/*Change flag to true to specify that received signal*/
    ; // Insert thread code here...
    osMessagePut(mid_MsgQueue,g_AdcConvValue,0);
}

int execute_timer(osTimerId timer, int delay,uint8_t function){
			osStatus status;
			
			if (function == Start_timer){
				osTimerStart(timer,delay);
				if (status != osOK){
					return 1;
				}		
			}else if (function == Stop_timer){
				osTimerStop(timer);
				if (status != osOK){
					return 1;
				}	
			}else if (function == Delete_timer){
				osTimerDelete(timer);
				if (status != osOK){
					return 1;
				}	
			}
			return 0;
}

void callback(void const *param){
		///sample_port(adc16_channel_config_t *adc16ChannelConfigStruct,1);
		osSignalSet(tid_Thread_6,0x20);
}

void sample_port(adc16_channel_config_t *adc16ChannelConfigStruct,int POT){

  osEvent           evt;
	MAILQUEUE_OBJ_t  *send2thread2 = 0;
	float value=0;
	
	/* Disable the flags*/
	if (POT==1){ //if POT1 means that PIT timer enabled an interrupt signal
			/*For POT1, set the channel and store the appropriate string for PRINT*/
			adc16ChannelConfigStruct->channelNumber= ADC_USER_CHANNEL_POT1;
			ADC16_SetChannelConfig(ADC_BASE, ADC_CHANNEL_GROUP, adc16ChannelConfigStruct);
	}else if (POT==2){//if POT2 means that user Pressed the button UP and GPIO enabled an interrupt
			/*For POT1, set the channel and store the appropriate string for PRINT*/
			adc16ChannelConfigStruct->channelNumber= ADC_USER_CHANNEL_POT2;
			ADC16_SetChannelConfig(ADC_BASE, ADC_CHANNEL_GROUP, adc16ChannelConfigStruct);
	}
	/*Trigger the PDB, with software trigger*/
	PDB_DoSoftwareTrigger(PDB_BASE);
	/*wait until ADC finishes conversion*/
	
  evt=osMessageGet(mid_MsgQueue,osWaitForever);            // wait for message
  if (evt.status == osEventMessage) {
		value = evt.value.v;
  }
	/*convert the value from ADC and PRINT it*/
	send2thread2 = osMailAlloc (qid_MailQueue, osWaitForever);         // Allocate memory
	if (send2thread2) {
		if (POT == 1){
			send2thread2->POT1_value = (value/65534)*3.3;                                     // Set the mail content
			send2thread2->POT_state = 0;
		}else if (POT == 2){
			send2thread2->POT2_value = (value/65534)*3.3;                                     // Set the mail content
			send2thread2->POT_state = 1;
		}
		strcpy(send2thread2->Buf,"ADC");
		osMailPut (qid_MailQueue, send2thread2);                         // Send Mail
	}
}
void InitPDB()
{
		pdb_config_t pdbConfigStruct; //struct to configure the PDB
    pdb_adc_pretrigger_config_t pdbAdcPreTriggerConfigStruct;//struct to configure the PDB Pretrigger 
		/*get default configurations for PDB*/
    PDB_GetDefaultConfig(&pdbConfigStruct);
		/*Initialize PDB*/
    PDB_Init(PDB_BASE, &pdbConfigStruct);

    /* Configure the delay interrupt. */
    PDB_SetModulusValue(PDB_BASE, 1U);

    /* The available delay value is less than or equal to the modulus value. */
    PDB_SetCounterDelayValue(PDB_BASE, 1U);
    //PDB_EnableInterrupts(PDB_BASE, kPDB_DelayInterruptEnable);

    /* Configure the ADC Pre-Trigger. */
    pdbAdcPreTriggerConfigStruct.enablePreTriggerMask          = 1U << 0U;
    pdbAdcPreTriggerConfigStruct.enableOutputMask              = 1U << 0U;
    pdbAdcPreTriggerConfigStruct.enableBackToBackOperationMask = 0U;
		/*config Pretrigger structure*/
    PDB_SetADCPreTriggerConfig(PDB_BASE, 0U, &pdbAdcPreTriggerConfigStruct);
    PDB_SetADCPreTriggerDelayValue(PDB_BASE, 0U, 0U, 1U);
    /* The available Pre-Trigger delay value is less than or equal to the modulus value. */
		
		/*This function loads the counter values from the internal buffer*/
    PDB_DoLoadValues(PDB_BASE);
}

void InitADC(adc16_channel_config_t *adc16ChannelConfigStruct)    
{
		/*struct to configure ADC block*/
		adc16_config_t adc16ConfigStruct;

		ADC16_GetDefaultConfig(&adc16ConfigStruct);
		/*Load default configurations and change to maximum resolution*/
		adc16ConfigStruct.resolution=kADC16_ResolutionSE16Bit;
	/*Initialize ADC*/
    ADC16_Init(ADC_BASE, &adc16ConfigStruct);
		/*Do auto calibration*/
    if (kStatus_Success == ADC16_DoAutoCalibration(ADC_BASE)){
        PRINTF("ADC16_DoAutoCalibration() Done.\r\n");
    }else{
        PRINTF("ADC16_DoAutoCalibration() Failed.\r\n");
    }
		/*Enable hardware trigger to establish connection with the PDB */
    ADC16_EnableHardwareTrigger(ADC_BASE, true);
		//define which channel will be sampled
    adc16ChannelConfigStruct->channelNumber                        = ADC_USER_CHANNEL_POT1;
		//when it finishes conversion, enable an interrupt
    adc16ChannelConfigStruct->enableInterruptOnConversionCompleted = true; /* Enable the interrupt. */
		/*Configure the channel with the parameters */		
    ADC16_SetChannelConfig(ADC_BASE, ADC_CHANNEL_GROUP, adc16ChannelConfigStruct);
		PRINTF("\r\n ADC initialized ...");

}

void Thread_1 (void const *argument) {
  MAILQUEUE_OBJ_t *pMail = 0;
	int ID=0;
	int time_int;
	char give_Characters[128]="";
	char time[128]="";
	char input_Character='\0';
	int i=0;
	osTimerId* timer_id=(osTimerId*)argument;
	
	int timer_status = execute_timer(*timer_id,100,Start_timer);
	if (!timer_status){
		PRINTF("\r\n osTimer started!\r\n");
	}else{
		PRINTF("\r\n osTimer not started!\r\n");
	}
	
  while (1) {
		memset(give_Characters,0,strlen(give_Characters));
		memset(time,0,strlen(time));
		time_int=0;
		osMutexWait(VCP_mutex,osWaitForever);
		PRINTF("\r\nType something on Keyboard and press ENTER: \r\n");
		osMutexRelease(VCP_mutex);
		i=0;
	  while(1){
			input_Character=GETCHAR();
			if (input_Character == '\r'){
				break;
			}	
			give_Characters[i]=input_Character;
			i++;
			if (i==128){
				break;
			}
		}
		//
		if (i<2){
			if (strncmp(give_Characters,"R",1) == 0){
				osSignalSet(tid_Thread_5,0x08);
			}
			if (strncmp(give_Characters,"r",1) == 0){
				osSignalSet(tid_Thread_5,0x09);
			}
			if (strncmp(give_Characters,"G",1) == 0){
				osSignalSet(tid_Thread_5,0x0a);
			}
			if (strncmp(give_Characters,"g",1) == 0){
				osSignalSet(tid_Thread_5,0x0b);
			}
			if (strncmp(give_Characters,"B",1) == 0){
				osSignalSet(tid_Thread_5,0x0c);
			}
			if (strncmp(give_Characters,"b",1) == 0){
				osSignalSet(tid_Thread_5,0x0d);
			}
			if (strncmp(give_Characters,"2",1) == 0){
				osSignalSet(tid_Thread_7,0x55);
			}
		}
		osMutexWait(VCP_mutex,osWaitForever);
		if (strncmp(give_Characters,"1 ",2)==0){
			strcpy(time,&give_Characters[2]);
			time_int=atoi(time);
			if (time_int == 0){
				PRINTF("Ops,you tried to access the timerate value of ADC but a mistake happened.\r\n");
				PRINTF("Please try, \" 1 1000 \" for example\r\n");
				continue;
			}else{
				PRINTF("New time_Rate = %d\r\n",time_int);
				timer_status = execute_timer(*timer_id,0,Stop_timer);
				if (!timer_status){
					PRINTF("\r\n osTimer stopped!\r\n");
				}else{
					PRINTF("\r\n osTimer not stopped!\r\n");
				}
				timer_status = execute_timer(*timer_id,1000,Start_timer);
				if (!timer_status){
					PRINTF("\r\n osTimer started with new time_Rate!\r\n");
				}else{
					PRINTF("\r\n osTimer not started with new time_Rate!\r\n");
				}
			}
		}
		osMutexRelease(VCP_mutex);

    pMail = osMailAlloc (qid_MailQueue, osWaitForever);         // Allocate memory
		
    strcpy(pMail->Buf,give_Characters);                                     // Set the mail content
    pMail->Idx = ID;
    osMailPut (qid_MailQueue, pMail);                         // Send Mail
		ID++;
    osThreadYield();                                // suspend thread
  }
}

void Thread_2 (void const *argument) {
  MAILQUEUE_OBJ_t  *pMail = 0;
	//MAILQUEUE_OBJ_t  *previous_pMail=0;
  osEvent           evt;
	
	int previous_id=0;
	
  while (1) {
    evt = osMailGet (qid_MailQueue, osWaitForever);             // wait for mail
    if (evt.status == osEventMail) {
      pMail = evt.value.p;
			osMutexWait(VCP_mutex,osWaitForever);
			if (!strcmp(pMail->Buf,"ADC")){
				if (pMail->POT_state == 0 ){
					PRINTF("POT1 = %.3f\r\n", pMail->POT1_value);
				}else if (pMail->POT_state == 1){
					PRINTF("POT2 = %.3f\r\n", pMail->POT2_value);
				}
			} 
			if (!strcmp(pMail->Buf,"sw2")){
				if (pMail->sw2_state == 1 ){
					PRINTF("SW2 is pressed\r\n");
				}else if(pMail->sw2_state == 0){
					PRINTF("SW2 is not pressed\r\n");
				}
			}
			if (!strcmp(pMail->Buf,"sw3")){
				if (pMail->sw3_state == 1){
					PRINTF("SW3 is pressed\r\n");
				}else if(pMail->sw3_state == 0 ){
					PRINTF("SW3 is not pressed\r\n");
				}
			}	
			if (pMail->Idx == previous_id){
				PRINTF("A message arrived from user with ID %d \r\n Content: \r\n %s \r\n", pMail->Idx, pMail->Buf);
				previous_id ++;
			}	
		osMutexRelease(VCP_mutex);
		osMailFree (qid_MailQueue, pMail);                      // free memory allocated for mail		
    }
  }
}

void Thread_3 (void const *argument) {
  MAILQUEUE_OBJ_t *pMail = 0;
  while (1) {
		osSignalWait(0x01,osWaitForever);
    pMail = osMailAlloc (qid_MailQueue, osWaitForever);         // Allocate memory
		strcpy(pMail->Buf,"sw2");
		pMail->sw2_state=!GPIO_ReadPinInput(BOARD_SW2_GPIO,BOARD_SW2_GPIO_PIN);
    
    osMailPut (qid_MailQueue, pMail);                         // Send Mail
		osThreadYield();                                // suspend thread
  }
}
void Thread_4 (void const *argument){
  MAILQUEUE_OBJ_t *pMail = 0;
  while (1) {
		osSignalWait(0x02,osWaitForever);
    pMail = osMailAlloc (qid_MailQueue, osWaitForever);         // Allocate memory
		strcpy(pMail->Buf,"sw3");
		pMail->sw3_state=!GPIO_ReadPinInput(BOARD_SW3_GPIO,BOARD_SW3_GPIO_PIN);
    
    osMailPut (qid_MailQueue, pMail);                         // Send Mail
    osThreadYield();                                // suspend thread
  }
}

void Thread_5(void const *argument){
  osEvent           evt;
	uint8_t signal_value;
	while(1){
		evt=osSignalWait(0x00,osWaitForever);
		if (evt.status == osEventSignal){
			signal_value = evt.value.signals;
			switch(signal_value){
				case 0x08:
					LED_On(0);
					break;
				case 0x09:
					LED_Off(0);
					break;
				case 0x0a:
					LED_On(1);
					break;
				case 0x0b:
					LED_Off(1);
				case 0x0c:
					LED_On(2);
					break;
				case 0x0d:
					LED_Off(2);
					break;
				default:
					break;	
			}
		}
	}
}

void Thread_6 (void const *argument) {
	adc16_channel_config_t* adc16ChannelConfigStruct= (adc16_channel_config_t*) argument;    
	
	while(1){
		osSignalWait(0x20,osWaitForever);
		osMutexWait(ADC_mutex,osWaitForever);
		sample_port(adc16ChannelConfigStruct,1);
		osMutexRelease(ADC_mutex);
		osThreadYield();
	}
}

void Thread_7 (void const *argument) {
	adc16_channel_config_t* adc16ChannelConfigStruct= (adc16_channel_config_t*) argument;    

  while (1) {
		osSignalWait(0x55,osWaitForever);
    osMutexWait(ADC_mutex,osWaitForever);
		sample_port(adc16ChannelConfigStruct,2);
		osMutexRelease(ADC_mutex);
		osThreadYield(); 
  }
}


int main(void)
{
	  osKernelInitialize();									// Initialize and suspend the Kernel 
		elec422_startup();	// Configure some of the LEDs and switches
		adc16_channel_config_t adc16ChannelConfigStruct;    
		//EnableIRQ(PDB_IRQ_ID);
		InitADC(&adc16ChannelConfigStruct);
    InitPDB();
	  EnableIRQ(ADC_IRQ_ID);

		osTimerId timer0 = osTimerCreate(osTimer(timer0_handle), osTimerPeriodic, (void *)0);
		
		VCP_mutex = osMutexCreate(osMutex(VCP_mutex));	
		ADC_mutex = osMutexCreate(osMutex(ADC_mutex));
		
	
		osKernelStart();											// start the RTOS
		qid_MailQueue = osMailCreate(osMailQ(MailQueue), NULL);							// Create the mailbox
		mid_MsgQueue = osMessageCreate (osMessageQ(MsgQueue), NULL);  // create msg queue
		if (!mid_MsgQueue) {
			; // Message Queue object not created, handle failure
		}		
		tid_Thread_1 = osThreadCreate(osThread(Thread_1),  &timer0);
		tid_Thread_2 = osThreadCreate(osThread(Thread_2),  NULL);
		tid_Thread_3 = osThreadCreate(osThread(Thread_3),  NULL);
		tid_Thread_4 = osThreadCreate(osThread(Thread_4),  NULL);
		tid_Thread_5 = osThreadCreate(osThread(Thread_5),  NULL);
		tid_Thread_6 = osThreadCreate(osThread(Thread_6),  &adc16ChannelConfigStruct);
		tid_Thread_7 = osThreadCreate(osThread(Thread_7),  &adc16ChannelConfigStruct);
		
		
		//osDelay(1000);
		main_id= osThreadGetId();						// Get the main Thread ID
		osThreadTerminate(main_id);						// and then terminate it
		
}

