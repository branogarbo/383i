#!/bin/bash

grep -P 'TCP.*\d{3,}$' lab_c_04.txt | cut -d ' ' -f5
