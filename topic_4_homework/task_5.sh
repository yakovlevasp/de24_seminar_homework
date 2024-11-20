#!/bin/bash

sleep 10 &
echo "Задача 1 (sleep 10) запущена с PID $!"

sleep 20 &
echo "Задача 2 (sleep 20) запущена с PID $!"

sleep 40 &
echo "Задача 3 (sleep 40) запущена с PID $!"

echo "Список задач:"
jobs

echo
echo "Переводим первую Задачу 1 на передний план"
fg %1

echo "Список задач:"
jobs

echo
echo "Переводим Задачу 2 в фоновый режим"
bg %2

echo "Список задач:"
jobs