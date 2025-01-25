#!/usr/bin/env bash

set -euo pipefail

FILE=first-line.txt

echo "$1" > "$FILE"

for ((i = 1; i <= 100; i++)); do
    printf "%s\n" "$(fake_id "$1")" >> "$FILE"
done

echo "The secret is the first line of the file $FILE"
