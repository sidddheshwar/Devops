#!/bin/bash
#add-on
# -----------------------------------------
# Author: Siddheshwar Dawle
# Advanced Bash Calculator
# -----------------------------------------

while true
do
    echo "==============================="
    echo "       Advanced Calculator"
    echo "==============================="
    echo "1. Addition"
    echo "2. Subtraction"
    echo "3. Multiplication"
    echo "4. Division"
    echo "5. Modulus"
    echo "6. Exit"
    echo "==============================="

    read -p "Choose an option [1-6]: " choice

    if [ "$choice" -eq 6 ]; then
        echo "Exiting Calculator..."
        break
    fi

    if [[ "$choice" -ge 1 && "$choice" -le 5 ]]; then

        read -p "Enter first number: " num1
        read -p "Enter second number: " num2

        case $choice in
            1)
                result=$(echo "$num1 + $num2" )
                echo "Result: $result"
                ;;
            2)
                result=$(echo "$num1 - $num2" )
                echo "Result: $result"
                ;;
            3)
                result=$(echo "$num1 * $num2" )
                echo "Result: $result"
                ;;
            4)
                if [ "$num2" == "0" ]; then
                    echo "Error: Division by zero not allowed!"
                else
                    result=$(echo "scale=2; $num1 / $num2" )
                    echo "Result: $result"
                fi
                ;;
            5)
                result=$(echo "$num1 % $num2" )
                echo "Result: $result"
                ;;
        esac

    else
        echo "Invalid option! Please choose between 1-6."
    fi

    echo ""
done

