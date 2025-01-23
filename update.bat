@echo off
chcp 65001 >nul

echo === Сброс локальных изменений ===
git reset --hard
if %ERRORLEVEL% NEQ 0 (
    echo [Ошибка] Не удалось сбросить изменения.
    pause
    exit /b %ERRORLEVEL%
)

echo === Получение обновлений из удаленного репозитория ===
git pull origin main
if %ERRORLEVEL% NEQ 0 (
    echo [Ошибка] Не удалось получить обновления.
    pause
    exit /b %ERRORLEVEL%
)

echo === Успешное обновление! ===
pause
