#include "stopwatch_controller.h"
#include "xparameters.h"
#include "xil_io.h"
#include <unistd.h>

/* Definitions Section */

/* 	Define the base memory addresses of the stopwatch_controller IP core */
#define SW_BASE XPAR_STOPWATCH_CONTROLLER_0_S00_AXI_BASEADDR
#define SSD_ADDR STOPWATCH_CONTROLLER_S00_AXI_SLV_REG0_OFFSET
#define LED_ADDR STOPWATCH_CONTROLLER_S00_AXI_SLV_REG1_OFFSET
#define SWITCH_ADDR STOPWATCH_CONTROLLER_S00_AXI_SLV_REG2_OFFSET
#define BTN_ADDR STOPWATCH_CONTROLLER_S00_AXI_SLV_REG3_OFFSET
#define TIMER_ADDR STOPWATCH_CONTROLLER_S00_AXI_SLV_REG4_OFFSET

#define BTN_C 16
#define BTN_D 8
#define BTN_R 4
#define BTN_U 2
#define BTN_L 1

#define SW_7 128
#define SW_6 64
#define SW_5 32
#define SW_4 16
#define SW_3 8
#define SW_2 4
#define SW_1 2
#define SW_0 1

int main(void){

	/* INPUT */
	u32 btn_in = 0;
	u32 switch_in = 0;
	u32 timer_in = 0;

	/* INTERNAL */
	u32 stopped = 1;
	u32 btn_in_prev = STOPWATCH_CONTROLLER_mReadReg(SW_BASE, BTN_ADDR);
	u32 switch_in_prev = STOPWATCH_CONTROLLER_mReadReg(SW_BASE, SWITCH_ADDR);
	u32 timer_zero = STOPWATCH_CONTROLLER_mReadReg(SW_BASE, TIMER_ADDR);

	/* OUTPUT */
	u32 ssd_out = 0;
	u32 led_out = 0;

	/* User defined variable */

	while(1)
	{
		/*** INPUT ***/

		/* btn */
		btn_in = STOPWATCH_CONTROLLER_mReadReg(SW_BASE, BTN_ADDR);
		u32 btn_rise = ~btn_in_prev & btn_in;
		if (btn_rise & BTN_C) stopped=(stopped==1?0:1);

		/* switch */
		switch_in = STOPWATCH_CONTROLLER_mReadReg(SW_BASE, SWITCH_ADDR);
		if (switch_in != switch_in_prev) stopped = 1;

		/* time */
		timer_in = STOPWATCH_CONTROLLER_mReadReg(SW_BASE, TIMER_ADDR);
		int time_display;
		if(stopped)
		{
			time_display = STOPWATCH_CONTROLLER_mReadReg(SW_BASE, SWITCH_ADDR);
			timer_zero = STOPWATCH_CONTROLLER_mReadReg(SW_BASE, TIMER_ADDR);
		}else
		{
			u32 time_elapsed = (timer_in - timer_zero) / 1000; // seconds
			time_display = switch_in - time_elapsed;
			if(time_display < 0)
			{
				timer_zero = STOPWATCH_CONTROLLER_mReadReg(SW_BASE, TIMER_ADDR);
			}
		}

		/*** OUTPUT ***/

		/* led */
		led_out = time_display;
		STOPWATCH_CONTROLLER_mWriteReg(SW_BASE, LED_ADDR, led_out);

		/* ssd */
		ssd_out = time_display;
		STOPWATCH_CONTROLLER_mWriteReg(SW_BASE, SSD_ADDR, ssd_out);

		/*** FEEDBACK ***/
		
		btn_in_prev = btn_in;
		switch_in_prev = switch_in;
	}
	return 1;
}
