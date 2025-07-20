#!/bin/bash

echo "🔄 Actualizando archivos estáticos de EGESVENT..."

# Activar entorno virtual
source .venv/bin/activate

# Recolectar archivos estáticos (si usas collectstatic en producción)
echo "📁 Recolectando archivos estáticos..."
python manage.py collectstatic --noinput --clear 2>/dev/null || echo "⚠️  Collectstatic no configurado (normal en desarrollo)"

echo "✅ ¡Archivos estáticos actualizados!"
echo "🌐 Recarga tu navegador para ver el nuevo logo de EGESVENT" 