#!/bin/bash

# Verificar que se proporcionen dos argumentos
if [ "$#" -ne 2 ]; then
    echo "Uso: $0 <numero> <nombre>"
    exit 1
fi

# Obtener los argumentos
numero=$1
nombre=$2

# Crear el directorio
mkdir -p "$numero"

# Crear el archivo .py
echo "# Este es la solución Python para $numero.$nombre" > "$numero/$nombre.py"

# Crear el archivo .cpp
echo "// Este es la solución C++ para $numero.$nombre" > "$numero/$nombre.cpp"

echo "Directorio '$numero' y archivos '$nombre.py' y '$nombre.cpp' creados."