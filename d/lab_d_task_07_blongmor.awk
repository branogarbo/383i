#!/usr/bin/awk -f

BEGIN {
    FS = ", "
}
NR != 1 {
    totalVotes += $2
    breedVotes[$2] = $1
}
END {
    avgVotes = totalVotes / (NR - 1)
    
    printf "Total votes: %d\n", totalVotes
    printf "Average votes: %.2f\n", avgVotes

    for (count in breedVotes) {
        if (count >= avgVotes) {
            topBreeds[count] = breedVotes[count]
        } else {
            bottomBreeds[count] = breedVotes[count]
        }
    }

    print "\nMost popular:"

    topLen = asorti(topBreeds)
    for (i = topLen; i >= 1; i--) {
        print breedVotes[topBreeds[i]]
    }

    print "\nLeast popular:"

    bottomLen = asorti(bottomBreeds)
    for (i = 1; i <= bottomLen; i++) {
        print breedVotes[bottomBreeds[i]]
    }
}
