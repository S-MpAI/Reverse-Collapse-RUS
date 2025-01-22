@echo off
chcp 65001 >nul

echo Сбрасываю все изменения...
git reset --hard
if %ERRORLEVEL% NEQ 0 (
    echo Произошла ошибка при сбросе изменений.
    pause
    exit /b %ERRORLEVEL%
)

echo Обновляю файлы из удаленного репозитория...
git pull origin main
if %ERRORLEVEL% NEQ 0 (
    echo Произошла ошибка при обновлении репозитория.
    pause
    exit /b %ERRORLEVEL%
)

echo Файлы успешно обновлены!
pause
