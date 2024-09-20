#!/bin/bash

tail -n +2 lab_c_03.csv | cut -d ',' -f1 | sort | uniq | wc -l
