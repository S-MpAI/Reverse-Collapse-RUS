@echo off
chcp 65001 >nul

echo === Сброс локальных изменений ===
git reset --hard
if errorlevel 1 (
    echo [Ошибка] Не удалось сбросить изменения.
    pause
    exit /b 1
)

echo === Получение обновлений из удаленного репозитория ===
git pull origin main
if errorlevel 1 (
    echo [Ошибка] Не удалось получить обновления.
    pause
    exit /b 1
)

echo === Успешное обновление! ===
pause
