#!/usr/bin/awk -f

BEGIN {
    FS = ","
}
{
    recordResult = 0

    if ($NF == "ADD") {
        for (i = 1; i <= NF-1; i++) {
            recordResult += $i
        }
    } else {
        for (i = 1; i <= NF-1; i++) {
            recordResult -= $i
        }
    }

    print recordResult
}
