#!/bin/bash

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

