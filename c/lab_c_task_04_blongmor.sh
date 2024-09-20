#!/bin/bash

cut -d ' ' -f1 lab_c_04.txt | sort | head -n -1 | sort -r | sed 's/-/\//gm' | head -1
