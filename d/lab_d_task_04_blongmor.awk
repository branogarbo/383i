#!/usr/bin/awk -f

BEGIN {
    FS = ","
}
{
    gradeCounts[$2] += 1
}
END {
    split("ABCDE", letterGrades, "")

    for (i in letterGrades) {
        printf "%s,%d\n", letterGrades[i], gradeCounts[letterGrades[i]]
    }
}
