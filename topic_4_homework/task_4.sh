#!/bin/bash

greet() {
    echo "Hello, $1"
}

add_numbers() {
    echo $(($1 + $2))
}

echo "Введите имя:"
read user_name
greet "$user_name"

echo "Введите первое число:"
read first_number
echo "Введите второе число:"
read second_number
echo "$first_number + $second_number = $(add_numbers "$first_number" "$second_number")"