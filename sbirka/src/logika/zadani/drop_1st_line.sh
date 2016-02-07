#!/bin/sh

# Drop the first line of a file
# Usage: sh scrip.sh file

tail -n +2 "$1" > "$1".tmp && mv "$1".tmp "$1"
