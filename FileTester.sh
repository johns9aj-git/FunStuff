#!bin/bash
# Flow Control and Text Processing 

# Seeing if a file exists 
FILENAME="flow_control_with_if.txt" 

if [[-f "${FILENAME}"]]; then 
    ehco "${FILENAME} already exists" 
    exit 1 
else 
    touch "${FILENAME}"
    fi
