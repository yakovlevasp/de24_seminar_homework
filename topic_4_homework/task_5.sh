#!/bin/bash
set -m

sleep 5 &
echo "Задача 1 (sleep 5) запущена с PID $!"

sleep 60 &
echo "Задача 2 (sleep 60) запущена с PID $!"

sleep 100 &
echo "Задача 2 (sleep 100) запущена с PID $!"

echo "Список задач:"
jobs

echo
echo "Переводим Задачу 1 на передний план"
fg %1

echo "Список задач:"
jobs

echo "Переводим Задачу 3 на передний план"
fg %3

echo "Список задач:"
jobs

echo "Продолжим выполнение Задачи 3 в фоновом режиме"
bg %3

echo "Список задач:"
jobs