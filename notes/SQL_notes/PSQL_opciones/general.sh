#!/bin/bash

# ======================================
# Resumen de Opciones Generales en psql
# ======================================
# -c, --command=ORDEN      -> Ejecuta una orden SQL o interna y sale.
# -d, --dbname=BASE        -> Especifica la base de datos a la cual conectarse.
# -f, --file=ARCHIVO       -> Ejecuta órdenes desde un archivo y sale.
# -l, --list               -> Lista las bases de datos y sale.
# -v, --set=NOMBRE=VALOR   -> Define variables específicas de psql.
# -V, --version            -> Muestra la versión de psql y sale.
# -X, --no-psqlrc          -> No lee el archivo de configuración (~/.psqlrc).
# -1, --single-transaction -> Ejecuta órdenes en una única transacción.
# -?, --help               -> Muestra la ayuda y opciones disponibles.
# --help=commands          -> Lista órdenes backslash y sale.
# --help=variables         -> Lista variables especiales y sale.
# ======================================

# 1. -c, --command=ORDEN
echo "Ejecutando un comando SQL directamente:"
psql -c "SELECT version();"
# Uso práctico: Realizar consultas rápidas o comprobar la conexión al servidor.

# 2. -d, --dbname=BASE
echo "Conectándose a la base de datos 'mi_base':"
psql -d mi_base -c "SELECT current_date;"
# Uso práctico: Especificar la base de datos para consultas directas.

# 3. -f, --file=ARCHIVO
echo "Creando un archivo SQL y ejecutándolo:"
echo "SELECT 'Hola desde archivo SQL' AS mensaje;" > script.sql
psql -f script.sql
# Uso práctico: Ejecutar scripts SQL completos desde un archivo.

# 4. -l, --list
echo "Listando todas las bases de datos disponibles:"
psql -l
# Uso práctico: Verificar qué bases de datos están disponibles en el servidor.

# 5. -v, --set=NOMBRE=VALOR
echo "Definiendo una variable en psql:"
psql -v MI_VARIABLE="'Valor de ejemplo'" -c "SELECT :MI_VARIABLE AS variable;"
# Uso práctico: Configurar variables para reutilizarlas en consultas SQL.

# 6. -V, --version
echo "Mostrando la versión de psql:"
psql -V
# Uso práctico: Comprobar la versión de PostgreSQL instalada.

# 7. -X, --no-psqlrc
echo "Ejecutando psql sin cargar configuraciones personalizadas:"
psql -X -c "SELECT current_time;"
# Uso práctico: Evitar conflictos con configuraciones personalizadas en ~/.psqlrc.

# 8. -1, --single-transaction
echo "Ejecutando varias consultas en una única transacción:"
echo "BEGIN; CREATE TEMP TABLE ejemplo (id INT); INSERT INTO ejemplo VALUES (1); COMMIT;" > transaction.sql
psql -1 -f transaction.sql
# Uso práctico: Garantizar que un conjunto de consultas se ejecuten como una transacción única.

# 9. -?, --help
echo "Mostrando ayuda general de psql:"
psql -?
# Uso práctico: Ver opciones disponibles rápidamente.

# 10. --help=commands
echo "Listando todas las órdenes backslash disponibles:"
psql --help=commands
# Uso práctico: Consultar comandos internos como \dt, \d+, etc.

# 11. --help=variables
echo "Listando todas las variables especiales de psql:"
psql --help=variables
# Uso práctico: Identificar variables internas útiles para personalizar consultas.

# ======================================
# Notas:
# 1. Estas opciones permiten interactuar con PostgreSQL de forma eficiente.
# 2. Usar estas herramientas puede automatizar tareas comunes en bases de datos.
# 3. Combinar estas opciones en scripts Bash facilita la administración de bases de datos.
# ======================================

echo "¡Opciones generales de psql explicadas y demostradas con éxito!"
