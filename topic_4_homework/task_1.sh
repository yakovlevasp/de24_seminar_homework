#!/bin/bash

echo "Список файлов:"
for item in *; do
    if [ -d "$item" ]; then
        echo "$item: directory"
    elif [ -f "$item" ]; then
        echo "$item: file"
    elif [ -L "$item" ]; then
        echo "$item: symlink"
    else
        echo "$item: other"
    fi
done
echo

if [ -z "$1" ]; then
    echo "Укажите имя файла"
    exit 1
fi

if [ -e "$1" ]; then
    echo "Файл '$1' существует."
else
    echo "Файл '$1' не найден."
fi
echo

echo "Информация о файлах:"
for item in *; do
    permissions=$(ls -ld "$item" | awk '{print $1}')
    echo "$item: $permissions"
done