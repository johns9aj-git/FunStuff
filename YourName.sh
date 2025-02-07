#!bin/bash

# This creates a file with your name and 

# Intialization 

echo "Please type your first name: "
read first_name
echo "Great your last name: "
read last_name

echo "Your name is ${first_name} ${last_name}, pleased to meet you."

# Processing 
touch Examples/YourNameDir/output.txt
echo ${first_name} ${last_name} > Examples/YourNameDir/output.txt
date +%d-%m-%Y >> Examples/YourNameDir/output.txt
cp Examples/YourNameDir/output.txt Examples/yourNameDir/backup.txt
echo "Contents of the output.txt file:" 
cat Examples/YourNameDir/output.txt


# Finalization 
