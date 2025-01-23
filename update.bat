@echo off
:: Устанавливаем кодировку UTF-8 для корректного отображения текста
chcp 65001 >nul

:: Начало выполнения скрипта
echo === Сброс локальных изменений ===
git reset --hard
echo Завершено git reset
if %errorlevel% neq 0 (
    echo Ошибка при сбросе изменений!
    pause
    exit /b 1
)

echo === Получение обновлений из удаленного репозитория ===
git pull origin main
echo Завершено git pull
if %errorlevel% neq 0 (
    echo Ошибка при получении обновлений!
    pause
    exit /b 1
)

:: Сообщение об успешном завершении
echo === Успешное обновление файлов! ===
pause
exit /b 0
