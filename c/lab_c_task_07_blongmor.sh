#!/bin/bash

tail -n +2 lab_c_04.txt | egrep '^2018-0[1-7]-.. [01][13579].* 9\..* (([1-8]?[0-9])|90)$' | cut -d ' ' -f4 | uniq | wc -l
