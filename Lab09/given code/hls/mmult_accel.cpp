#include <stdio.h>
#include <stdlib.h>

#include "mmult.h"


// THIS IS THE TOP LEVEL DESIGN THAT WILL BE SYNTHESIZED
#define MCR_SIZE 1024


void standalone_mmult (float A[32][32], float B[32][32], float C[32][32])
{

	mmult_hw <float, 32>(A, B, C);

}



void HLS_accel (AXI_VAL INPUT_STREAM[2*MCR_SIZE], AXI_VAL OUTPUT_STREAM[MCR_SIZE])
{
// Map HLS ports to AXI interfaces
#pragma HLS INTERFACE s_axilite port=return     bundle=CONTROL_BUS
#pragma HLS INTERFACE axis      port=INPUT_STREAM
#pragma HLS INTERFACE axis      port=OUTPUT_STREAM

	wrapped_mmult_hw <float, 32, 32*32, 4, 5, 5>(INPUT_STREAM, OUTPUT_STREAM);

	return;
}

