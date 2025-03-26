#!/bin/bash

#part one

echo "Welcome" #display welcome message

ls -ltrh #list dorectories

#part two


while true; do
    # Prompt the user to enter a line of text
    echo "Please enter a line of text (press Enter without text to exit):"
    read user_input

    # Check if the input is empty to exit the loop
    if [[ -z "$user_input" ]]; then
        echo "Exiting character counting."
        break
    fi

    # Count the number of characters in the entered line and display it
    char_count=${#user_input}
    echo "Character count: $char_count"
done

echo "Goodbye!"

