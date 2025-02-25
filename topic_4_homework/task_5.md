*5. Напишите скрипт, который запускает три команды sleep с разными временами в фоновом режиме.
Используйте команды jobs, fg, bg, чтобы продемонстрировать управление этими задачами*

Для решения задачи используем команды:
- jobs - для отображения списка фоновых задач, связанных с текущей оболочкой
- fg - для выполнения задачи на переднем плане
- bg - для выполнения задачи в фоновом режиме
- kill - для отправки сигналов процессам

![5_jobs.JPG](img%2F5_jobs.JPG)

Запустим 3 задачи с командой sleep с временами: 5, 60 и 100 секунд. Задачи запускаем в фоновом режиме.

Переведем первую задачу (sleep 5) на передний план, видим,
что данный процесс вернулся и занял нашу оболочку.
После завершения данный процесс не отображается в списке задач (jobs), но нумерация не изменилась.

Далее переведем третью задачу (sleep 100) на передний план, теперь она заняла нашу оболочку.

Но, так как эта задача слишком долго выполнятся,
лучше отправим эту задачу в “сон”, послав сигнал SIGTSTP (kill -19).
Видим, статус "Остановлен".

Далее в скрипте возобновим выполнение этой задачи в фоновом режиме (bg).
Видим статус "Запущен". Также видим, что манипуляции с третьей задачей никак не повлияли выполнение второй.