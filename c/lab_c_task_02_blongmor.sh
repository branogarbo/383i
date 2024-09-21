#!/bin/bash

cat lab_c_02.csv | egrep ',IFT383$' | cut -d ',' -f1
