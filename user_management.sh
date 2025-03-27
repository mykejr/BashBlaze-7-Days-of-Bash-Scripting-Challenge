#!/bin/bash

# Beolvasás az opciók kezelésére
while getopts "cu:" opt; do
    case "$opt" in
        c)
            # Kérjük be a felhasználónevet
            read -p "Enter username: " username

            # Ellenőrizzük, hogy létezik-e már a felhasználó
            if grep -q "^$username:" /etc/passwd; then
                echo "Error: Username '$username' already exists."
                exit 1
            fi

            # Ha nem létezik, kérjünk be egy jelszót, és hozzuk létre a felhasználót
            read -sp "Enter password for $username: " password
            echo
            sudo useradd -m -p "$(openssl passwd -1 "$password")" "$username"

            echo "User '$username' created successfully."
            ;;

        u)
            # Ha csak username-t adunk meg, azt itt kezelhetjük
            echo "Username: $OPTARG"
            ;;

        *)
            # Hibás opció kezelése
            echo "Invalid option"
            exit 1
            ;;
    esac
done
