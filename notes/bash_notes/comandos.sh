#!/bin/bash

# ======================================
# Resumen de Uso y Aplicaciones
# ======================================
# 1. echo muestra información importante al usuario, como mensajes o resultados.
# 2. read permite interactuar con el usuario y recoger entradas personalizadas.
# 3. sleep añade pausas controladas para mejorar la experiencia interactiva o gestionar tiempos de espera.
# 4. ./ ejecuta scripts y programas directamente desde la terminal.
# ======================================

# 1. echo: Imprimir texto en la terminal
echo "Hola, bienvenido al script de ejemplo."
# Uso práctico: Mostrar mensajes al usuario, logs o resultados de operaciones.

# 2. read: Leer entrada del usuario
echo "Por favor, ingresa tu nombre:"
read NAME
echo "¡Hola, $NAME! Gracias por usar este script."
# Uso práctico: Recibir información del usuario como configuraciones o datos personalizados.

# 3. sleep: Pausar la ejecución por un tiempo específico
echo "Iniciando cuenta regresiva..."
for i in {5..1}; do
  echo "En $i segundos..."
  sleep 1
done
echo "¡Acción completada!"
# Uso práctico: Crear pausas entre tareas, especialmente en scripts interactivos o animaciones simples.

# 4. ./: Ejecutar un archivo o programa en el directorio actual
echo "Creando un archivo ejecutable y ejecutándolo..."
echo -e "#!/bin/bash\n\necho 'Hola desde el script ejecutado.'" > hello.sh
chmod +x hello.sh
./hello.sh
# Uso práctico: Ejecutar scripts o programas desde el directorio actual.

# ======================================
# Ejemplo combinado de todos los comandos
# ======================================
echo "Vamos a combinar los comandos aprendidos:"
echo "¿Cuál es tu fruta favorita?"
read FRUIT
echo "Tu fruta favorita es $FRUIT. Procesando tu respuesta..."
sleep 2
echo "¡Listo! Tu elección ha sido registrada."
# Uso práctico: Diseñar scripts interactivos para encuestas, configuraciones o juegos.

