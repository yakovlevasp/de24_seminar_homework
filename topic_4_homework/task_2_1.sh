#!/bin/bash

echo "PATH:"
echo "$PATH"

if [ -z "$1" ]; then
    echo "укажите директорию"
    exit 1
fi

export PATH="$PATH:$1"
echo "Новое значение PATH:"
echo "$PATH"