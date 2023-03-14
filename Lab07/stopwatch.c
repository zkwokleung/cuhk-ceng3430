#include "stopwatch_controller.h"
#include "xil_io.h"
#include "xparameters.h"
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

#define S_STOPPED 0
#define S_COUNTDOWN 1
#define S_COUNTUP 2

int main(void)
{

    /* INPUT */
    u32 btn_in = 0;
    u32 switch_in = 0;
    u32 timer_in = 0;

    /* INTERNAL */
    u32 btn_in_prev = STOPWATCH_CONTROLLER_mReadReg(SW_BASE, BTN_ADDR);
    u32 switch_in_prev = STOPWATCH_CONTROLLER_mReadReg(SW_BASE, SWITCH_ADDR);
    u32 timer_zero = STOPWATCH_CONTROLLER_mReadReg(SW_BASE, TIMER_ADDR);

    /* OUTPUT */
    u32 ssd_out = 0;
    u32 led_out = 0;

    /* User defined variable */
    u32 state = S_STOPPED;

    while (1)
    {
        /*** INPUT ***/

        /* btn */
        btn_in = STOPWATCH_CONTROLLER_mReadReg(SW_BASE, BTN_ADDR);
        u32 btn_rise = ~btn_in_prev & btn_in;

        /* switch */
        switch_in = STOPWATCH_CONTROLLER_mReadReg(SW_BASE, SWITCH_ADDR);

        /* time */
        timer_in = STOPWATCH_CONTROLLER_mReadReg(SW_BASE, TIMER_ADDR);
        int time_display;
        u32 time_elapsed;
        switch (state)
        {
        case S_STOPPED:
            time_display = STOPWATCH_CONTROLLER_mReadReg(SW_BASE, SWITCH_ADDR);
            timer_zero = STOPWATCH_CONTROLLER_mReadReg(SW_BASE, TIMER_ADDR);

            if (btn_rise & BTN_D)
                state = S_COUNTDOWN;
            else if(btn_rise & BTN_U)
            	state = S_COUNTUP;

            break;

        case S_COUNTDOWN:
        	time_elapsed = (timer_in - timer_zero) / 500; // seconds
            time_display = switch_in - time_elapsed;
            if (time_display < 0)
            {
                timer_zero = STOPWATCH_CONTROLLER_mReadReg(SW_BASE, TIMER_ADDR);
            }

            if (btn_rise & BTN_C)
            	state = S_STOPPED;

            break;

        case S_COUNTUP:
            time_elapsed = (timer_in - timer_zero) / 1000; // seconds
            time_display = switch_in + time_elapsed;
            if (time_display > 255)
            {
                timer_zero = STOPWATCH_CONTROLLER_mReadReg(SW_BASE, TIMER_ADDR);
            }


            if (btn_rise & BTN_C)
            	state = S_STOPPED;

            break;

        default:
            break;
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
