#!/bin/bash

echo "🚀 Iniciando PixelPlay - Tienda de Juegos"
echo "========================================"

# Verificar si existe el entorno virtual
if [ ! -d ".venv" ]; then
    echo "❌ No se encontró el entorno virtual. Ejecuta primero ./setup.sh"
    exit 1
fi

# Activar entorno virtual
echo "🔧 Activando entorno virtual..."
source .venv/bin/activate

# Iniciar servidor
echo "🌐 Iniciando servidor de desarrollo..."
python manage.py runserver

echo ""
echo "Servidor disponible en: http://127.0.0.1:8000/"
echo "Panel de administración: http://127.0.0.1:8000/admin/" 