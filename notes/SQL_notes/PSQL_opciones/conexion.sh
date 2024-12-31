#!/bin/bash

# ======================================
# Resumen de Opciones de Conexión en psql
# ======================================
# -h, --host=ANFITRIÓN      -> Especifica el anfitrión de la base de datos o el directorio del socket.
# -p, --port=PUERTO         -> Define el puerto del servidor al que conectarse.
# -U, --username=USUARIO    -> Establece el nombre de usuario para conectarse.
# -w, --no-password         -> No solicita la contraseña (útil si la autenticación no la requiere).
# -W, --password            -> Fuerza la solicitud de la contraseña antes de conectarse.
# ======================================

# 1. -h, --host=ANFITRIÓN
echo "Conectándose al anfitrión 'localhost':"
psql -h localhost -d mi_base -c "SELECT version();"
# Uso práctico: Conectarse a un servidor remoto o especificar el directorio del socket.

# 2. -p, --port=PUERTO
echo "Conectándose al puerto 5432 del servidor:"
psql -h localhost -p 5432 -d mi_base -c "SELECT current_date;"
# Uso práctico: Especificar un puerto distinto del predeterminado (5432) si es necesario.

# 3. -U, --username=USUARIO
echo "Conectándose con un nombre de usuario específico:"
psql -h localhost -U mi_usuario -d mi_base -c "SELECT current_time;"
# Uso práctico: Acceder a la base de datos como un usuario específico.

# 4. -w, --no-password
echo "Intentando conexión sin solicitar contraseña:"
psql -h localhost -U mi_usuario -w -d mi_base -c "SELECT 'Conexión sin contraseña';"
# Uso práctico: Útil en entornos donde la autenticación no requiere contraseña (por ejemplo, mediante `.pgpass` o autenticación de sistema).

# 5. -W, --password
echo "Forzando la solicitud de contraseña:"
psql -h localhost -U mi_usuario -W -d mi_base -c "SELECT 'Conexión con solicitud de contraseña';"
# Uso práctico: Asegurarse de que la conexión solicite una contraseña manualmente.

# ======================================
# Notas:
# 1. Estas opciones son esenciales para personalizar las conexiones a PostgreSQL, especialmente en entornos con múltiples servidores o usuarios.
# 2. Usar `-w` o `.pgpass` es útil para scripts automatizados sin intervención del usuario.
# 3. La opción `-W` garantiza que se solicite una contraseña, útil en configuraciones sensibles.
# 4. Siempre asegúrate de reemplazar `mi_base` y `mi_usuario` con valores reales para probar estas opciones.
# ======================================

echo "¡Opciones de conexión explicadas y demostradas con éxito!"
