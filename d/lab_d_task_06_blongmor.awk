#!/usr/bin/awk -f

# the pug hate is justified

BEGIN {
    FS = ", "
}
NR != 1 {
    if ($2 < voteMin) {
        voteMin = $2
        loserDog = $1
    } else if (NR == 2) {
        voteMin = $2
    }
}
END {
    printf "The %s is sad because it only got %d vote(s).\n", loserDog, voteMin
}
