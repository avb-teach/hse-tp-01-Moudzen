#!/bin/bash
inp="$1"
exit="$2"
for i in "$inp"/*; do
    if [ -f "$i" ]; then
        cp "$i" "$exit/"
    elif [ -d "$i" ]; then
        for j in "$i"/*; do
            if [ -f "$j" ]; then
                cp "$j" "$exit/"
            fi
        done
    fi
done