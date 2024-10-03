#!/usr/bin/awk -f

BEGIN {
    FS = ","
}
NR != 1 {
    printf "%s is taking %s.\n", $1, $3
}
