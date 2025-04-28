#!/bin/bash
inp=$1
exit=$2
find "$inp" -type f -print0 | while IFS= read -r -d '' file; do
    filename=$(basename "$file")
    base="${filename%.*}"
    ext="${filename##*.}"

    cp "$file" "$dest"
done