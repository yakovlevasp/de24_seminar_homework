#!/bin/bash

echo "Введите число:"
read number

if [ "$number" -gt 0 ]; then
    echo "Число положительное"
elif [ "$number" -lt 0 ]; then
    echo "Число отрицательное"
elif [ "$number" = 0 ]; then
  echo "Число равно нулю"
else
    echo "Нужно ввести число"
    exit 1
fi

if [ "$number" -gt 0 ]; then
    echo "Считаем от 1 до $number:"
    i=1
    while [ $i -le $number ]; do
        echo $i
        i=$((i + 1))
    done
fi