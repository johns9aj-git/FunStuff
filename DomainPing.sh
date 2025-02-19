#!/bin/bash

# Check if the correct number of arguments are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <name> <target_domain>"
    exit 1
fi

# Assign arguments to variables
NAME="$1"
DOMAIN="$2"
CSV_FILE="ping_results.csv"

# Perform the ping test (send 1 packet and wait for a response)
ping -c 1 "$DOMAIN" > /dev/null 2>&1

# Determine if the ping was successful
if [ "$?" -eq 0 ]; then
    RESULT="success"
else
    RESULT="failure"
fi

# Get the current date and time
TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")

# Write results to CSV file
echo "$NAME,$DOMAIN,$RESULT,$TIMESTAMP" >> "$CSV_FILE"

# Output result to the user
echo "Ping test result for $DOMAIN: $RESULT"

echo "Results saved to $CSV_FILE"

