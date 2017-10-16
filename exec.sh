#!/bin/bash

export OMP_NUM_THREADS=2
export KMP_AFFINITY=compact
./knl-ex1
