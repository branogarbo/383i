#!/usr/bin/awk -f

BEGIN {
    FS = ","
}
{
    gradeCounts[$2] += 1
}
END {
    split("ABCDE", letterGrades, "")

    for (l in letterGrades) {
        printf "%s,%d\n", letterGrades[l], gradeCounts[letterGrades[l]]
    }

}
