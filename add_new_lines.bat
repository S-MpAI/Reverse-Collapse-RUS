@echo off
chcp 65001 >nul

echo Добавление изменений в индекс...
git add .
if %ERRORLEVEL% NEQ 0 (
    echo Произошла ошибка при добавлении изменений.
    pause
    exit /b %ERRORLEVEL%
)

echo Фиксация изменений...
git commit -m "Автоматическое добавление изменений и новых файлов"
if %ERRORLEVEL% NEQ 0 (
    echo Произошла ошибка при фиксации изменений. Возможно, нет изменений для фиксации.
    pause
    exit /b %ERRORLEVEL%
)

echo Отправка изменений в удалённый репозиторий...
git push origin main
if %ERRORLEVEL% NEQ 0 (
    echo Произошла ошибка при отправке изменений.
    pause
    exit /b %ERRORLEVEL%
)

echo Изменения успешно отправлены!
pause
