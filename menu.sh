#!/bin/bash

while true; do
    echo
    echo "===== MENU ====="
    echo "1. Greet user"
    echo "2. Add two integers"
    echo "3. Check even or odd"
    echo "4. Exit"

    read -r -p "Enter your choice: " choice

    case "$choice" in
        1)
            read -r -p "Enter your name: " name
            if [ -z "$name" ]; then
                echo "Name cannot be empty."
            else
                echo "Hello, $name!"
            fi
            ;;
        2)
            read -r -p "Enter first integer: " a
            read -r -p "Enter second integer: " b

            if [[ "$a" =~ ^-?[0-9]+$ && "$b" =~ ^-?[0-9]+$ ]]; then
                echo "Sum: $((a + b))"
            else
                echo "Please enter valid integers."
            fi
            ;;
        3)
            read -r -p "Enter an integer: " n

            if [[ "$n" =~ ^-?[0-9]+$ ]]; then
                if (( n % 2 == 0 )); then
                    echo "$n is even."
                else
                    echo "$n is odd."
                fi
            else
                echo "Please enter a valid integer."
            fi
            ;;
        4)
            echo "Exiting program."
            break
            ;;
        *)
            echo "Invalid choice. Try again."
            ;;
    esac
done
