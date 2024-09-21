#!/bin/bash

egrep '^....-08-.. (1[2-9]|2[0-4]).*22 .*$' lab_c_04.txt | cut -d ' ' -f4
