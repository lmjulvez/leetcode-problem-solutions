@echo off
REM Verificar que se proporcionen dos argumentos
if "%~2"=="" (
    echo Uso: %0 ^<numero^> ^<nombre^>
    exit /b 1
)

REM Obtener los argumentos
set "numero=%1"
set "nombre=%2"

REM Crear el directorio
if not exist "%numero%" (
    mkdir "%numero%"
)

REM Crear el archivo .py
echo # Este es la solución Python para %numero%.%nombre% > "%numero%\%nombre%.py"

REM Crear el archivo .cpp
echo // Este es la solución C++ para %numero%.%nombre% > "%numero%\%nombre%.cpp"

echo Directorio '%numero%' y archivos '%nombre%.py' y '%nombre%.cpp' creados.
