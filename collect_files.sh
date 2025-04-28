#!/bin/bash
inp=$1
exit=$2
for i in $(find "$inp" -type f)
do
    filen=$(basename "$i")
    cp "$i" "$outp/$filen"
done