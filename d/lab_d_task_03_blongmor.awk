#!/usr/bin/awk -f

BEGIN {
    FS = ","
    print "These are the students who have an A:"
}
$2 == "A" {
    print $1
}
