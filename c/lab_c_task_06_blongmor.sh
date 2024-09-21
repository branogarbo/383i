#!/bin/bash

egrep '^....-08-.. [^0].*22 .*$' lab_c_04.txt | cut -d ' ' -f4
