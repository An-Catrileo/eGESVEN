#!/bin/bash

echo "🎮 Configurando PixelPlay - Tienda de Juegos 🎮"
echo "================================================"

# Crear entorno virtual si no existe
if [ ! -d ".venv" ]; then
    echo "📦 Creando entorno virtual..."
    python3 -m venv .venv
fi

# Activar entorno virtual
echo "🔧 Activando entorno virtual..."
source .venv/bin/activate

# Instalar dependencias
echo "📚 Instalando dependencias..."
pip install --upgrade pip
pip install -r requirements.txt

# Aplicar migraciones
echo "🗄️  Configurando base de datos..."
python manage.py makemigrations
python manage.py migrate

# Crear superusuario (opcional)
echo "👤 Creando superusuario..."
echo "from django.contrib.auth import get_user_model; User = get_user_model(); User.objects.filter(username='admin').exists() or User.objects.create_superuser('admin', 'admin@example.com', 'admin123')" | python manage.py shell

echo "✅ Configuración completada!"
echo ""
echo "Para iniciar el servidor:"
echo "1. source .venv/bin/activate"
echo "2. python manage.py runserver"
echo ""
echo "Credenciales de admin:"
echo "Usuario: admin"
echo "Contraseña: admin123" 