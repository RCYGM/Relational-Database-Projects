#!/bin/bash

# ======================================
# Resumen de Opciones de Entrada y Salida en psql
# ======================================
# -a, --echo-all       -> Muestra todas las órdenes del script.
# -b, --echo-errors    -> Muestra las órdenes fallidas.
# -e, --echo-queries   -> Muestra las órdenes enviadas al servidor.
# -E, --echo-hidden    -> Muestra consultas generadas por órdenes internas.
# -L, --log-file=ARCH  -> Envía el registro de la sesión a un archivo.
# -n, --no-readline    -> Deshabilita la edición interactiva (readline).
# -o, --output=ARCHIVO -> Envía los resultados de consultas a un archivo.
# -q, --quiet          -> Activa el modo silencioso (sin mensajes, sólo resultados).
# -s, --single-step    -> Activa el modo paso a paso (confirmar cada consulta).
# -S, --single-line    -> Activa el modo de líneas (fin de línea termina la orden SQL).
# ======================================

# 1. -a, --echo-all
echo "Ejecutando psql con la opción --echo-all:"
psql -d mi_base -a -c "SELECT current_date;"
# Uso práctico: Mostrar todas las órdenes SQL ejecutadas dentro de un script para depuración.

# 2. -b, --echo-errors
echo "Mostrando errores en consultas con --echo-errors:"
psql -d mi_base -b -c "SELECT * FROM tabla_inexistente;"
# Uso práctico: Identificar consultas fallidas en un script SQL.

# 3. -e, --echo-queries
echo "Mostrando órdenes enviadas al servidor con --echo-queries:"
psql -d mi_base -e -c "SELECT version();"
# Uso práctico: Verificar qué consultas específicas se envían al servidor PostgreSQL.

# 4. -E, --echo-hidden
echo "Mostrando consultas generadas por órdenes internas con --echo-hidden:"
psql -d mi_base -E -c "\dt"
# Uso práctico: Examinar consultas SQL subyacentes generadas por comandos internos de psql.

# 5. -L, --log-file=ARCH
echo "Guardando el registro de la sesión en un archivo con --log-file:"
psql -d mi_base -L session_log.txt -c "SELECT current_time;"
cat session_log.txt
# Uso práctico: Registrar todas las operaciones realizadas durante una sesión para auditoría o referencia futura.

# 6. -n, --no-readline
echo "Ejecutando psql sin soporte de readline con --no-readline:"
psql -d mi_base -n -c "SELECT 'Sin readline';"
# Uso práctico: Deshabilitar la edición interactiva de línea, útil en entornos limitados.

# 7. -o, --output=ARCHIVO
echo "Guardando resultados de consultas en un archivo con --output:"
psql -d mi_base -o query_output.txt -c "SELECT * FROM pg_tables LIMIT 5;"
echo "Contenido del archivo query_output.txt:"
cat query_output.txt
# Uso práctico: Exportar resultados de consultas directamente a un archivo.

# 8. -q, --quiet
echo "Ejecutando psql en modo silencioso con --quiet:"
psql -d mi_base -q -c "SELECT 'Resultado sin mensajes';"
# Uso práctico: Minimizar la salida a sólo resultados de consultas.

# 9. -s, --single-step
echo "Activando el modo paso a paso con --single-step:"
psql -d mi_base -s -c "SELECT 'Paso 1'; SELECT 'Paso 2';"
# Uso práctico: Confirmar manualmente cada consulta antes de ejecutarla.

# 10. -S, --single-line
echo "Activando el modo de líneas con --single-line:"
echo "SELECT 'Primera línea'; SELECT 'Segunda línea';" | psql -d mi_base -S
# Uso práctico: Escribir y ejecutar consultas línea por línea.

# ======================================
# Notas:
# 1. Estas opciones son útiles para depuración, auditoría y personalización de sesiones en psql.
# 2. Opciones como `-o` y `-L` facilitan la generación de logs y exportaciones.
# 3. El modo silencioso (`-q`) y el modo paso a paso (`-s`) son esenciales para scripts interactivos.
# 4. Usar `-E` puede ser educativo para comprender cómo funcionan los comandos internos.
# ======================================

echo "¡Opciones de entrada y salida explicadas y demostradas con éxito!"
