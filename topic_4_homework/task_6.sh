#!/bin/bash

if [ -f "input.txt" ]; then
    cat input.txt
else
    echo "input.txt не найден"
    exit 1
fi

wc -l < input.txt > output.txt
echo "Количество строк записано в output.txt"

ls nonexistent_file 2> error.log
if [ -s error.log ]; then
    echo "Ошибки записаны в error.log:"
    cat error.log
fi