#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include "lfsr.h"

void lfsr_calculate(uint16_t *reg) {
    /* YOUR CODE HERE */
    int i = *reg;
    i = (i ^ (i >> 2) ^ (i >> 3) ^ (i >> 5));
    *reg = *reg >> 1;
    *reg = *reg | (i << 15);
}

