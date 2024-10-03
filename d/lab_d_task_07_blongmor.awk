#!/usr/bin/awk -f

BEGIN {
    FS = ","
}
NR != 1 {
    totalVotes += $2
    breedVotes[$1] = $2
}
END {
    avgVotes = totalVotes / NR
    
    printf "Total votes: %d\n", totalVotes
    printf "Average votes: %.2f\n", avgVotes

    for (breed in breedVotes) {
        if (breedVotes[breed] >= avgVotes) {
            topBreeds[breed] = breedVotes[breed]
        } else {
            bottomBreeds[breed] = breedVotes[breed]
        }
    }

    print "Most popular:"

    topLen = asort(topBreeds)
    for (i = topLen; i >= 1; i--) {
        print topBreeds[i]
    }

    print "Least popular:"

    bottomLen = asort(bottomBreeds)
    for (i = 1; i <= bottomLen; i++) {
        print bottomBreeds[i]
    }
}
