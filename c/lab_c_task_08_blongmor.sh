#!/bin/bash

egrep ' (9|[1-9][0-9])$' lab_c_08.txt | cut -d ' ' -f1
