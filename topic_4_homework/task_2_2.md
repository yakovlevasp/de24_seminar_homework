*2.2 Объясните, почему изменения переменной PATH, сделанные через терминал, временные,
и предложите способ сделать их постоянными.
Добавьте команду в файл .bashrc и продемонстрируйте, как перезапустить терминал для
применения изменений.*

export устанавливает переменную окружения для текущего сеанса оболочки.
Как следствие, если открыть другую оболочку или перезапустите систему,
переменная окружения (или её новое значение) больше не будет доступна.

![2_export_path.JPG](img%2F2_export_path.JPG)

Если сохранить переменные в конфигурационных файлах оболочки (~/.bashrc), то
новое значение переменной будет автоматически применено,
так как .bashrc загружается при запуске сеанса оболочки.

![2_bashrc.JPG](img%2F2_bashrc.JPG)

