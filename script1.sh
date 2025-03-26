#!/bin/bash

#task 1
echo "My script, today is $(date)"

#task 2
name="General Kenobi"
echo "Hello there, $name!"

#task 4

# Declare and assign numbers
a=10  # first number
b=20  # second number

# Calculate the sum
sum=$((a + b))  # sum calculation

# Print the sum
echo "The sum of $a and $b is: $sum"

#task 5

# Get the current logged-in user
echo "Current user: $USER"

# Get the home directory of the user
echo "Home directory: $HOME"

# Get the current working directory
echo "Current working directory: $PWD"

# Get the current date and time
echo "Current date and time: $(date)"

#task 6

# Prompt the user to enter the directory
echo "Enter the directory:"
read directory

# Prompt the user to enter the file extension (e.g., .txt)
echo "Enter the file extension (e.g., .txt):"
read extension

# Check if the directory exists
if [ -d "$directory" ]; then
    # Use wildcard to list files with the specified extension
    echo "Listing files with the extension '$extension' in directory '$director>
    ls "$directory"/*"$extension"
else
    echo "The directory does not exist."
fi


