#!/bin/bash

# ======================================
# Resumen de Opciones de Formato de Salida en psql
# ======================================
# -A, --no-align           -> Activa el modo de salida desalineado.
#     --csv                -> Genera la salida en formato CSV.
# -F, --field-separator=CADENA -> Define un separador de campos para salida desalineada.
# -H, --html               -> Genera tablas HTML en la salida.
# -P, --pset=VAR[=ARG]     -> Configura opciones de impresión (\pset).
# -R, --record-separator=CADENA -> Define el separador de registros en salida desalineada.
# -t, --tuples-only        -> Sólo muestra los registros, sin encabezados.
# -T, --table-attr=TEXTO   -> Agrega atributos a tablas HTML (ancho, borde).
# -x, --expanded           -> Activa el modo expandido de salida de tablas.
# -z, --field-separator-zero -> Define separador de campos como byte cero.
# -0, --record-separator-zero -> Define separador de filas como byte cero.
# ======================================

# 1. -A, --no-align
echo "Salida desalineada con --no-align:"
psql -d mi_base -A -c "SELECT * FROM pg_tables LIMIT 3;"
# Uso práctico: Exportar datos sin alineación para procesarlos con herramientas externas.

# 2. --csv
echo "Generando salida en formato CSV:"
psql -d mi_base --csv -c "SELECT * FROM pg_tables LIMIT 3;"
# Uso práctico: Exportar datos en formato CSV directamente para análisis o carga en otros sistemas.

# 3. -F, --field-separator=CADENA
echo "Usando separador de campos ';' con --field-separator:"
psql -d mi_base -A -F ";" -c "SELECT * FROM pg_tables LIMIT 3;"
# Uso práctico: Personalizar el separador para adaptarlo a diferentes sistemas o estándares.

# 4. -H, --html
echo "Generando salida en formato HTML:"
psql -d mi_base -H -c "SELECT * FROM pg_tables LIMIT 3;" > output.html
echo "Salida generada en 'output.html'."
# Uso práctico: Generar informes en formato HTML directamente desde psql.

# 5. -P, --pset=VAR[=ARG]
echo "Usando --pset para personalizar el formato de impresión:"
psql -d mi_base -P border=2 -c "SELECT * FROM pg_tables LIMIT 3;"
# Uso práctico: Configurar bordes u otras propiedades para la salida de tablas.

# 6. -R, --record-separator=CADENA
echo "Definiendo separador de registros como '---' con --record-separator:"
psql -d mi_base -A -R "---" -c "SELECT * FROM pg_tables LIMIT 3;"
# Uso práctico: Personalizar el separador entre filas para mejorar la legibilidad o para exportar datos.

# 7. -t, --tuples-only
echo "Mostrando sólo los registros sin encabezados con --tuples-only:"
psql -d mi_base -t -c "SELECT * FROM pg_tables LIMIT 3;"
# Uso práctico: Exportar sólo los datos, sin encabezados ni metadatos.

# 8. -T, --table-attr=TEXTO
echo "Definiendo atributos para tablas HTML con --table-attr:"
psql -d mi_base -H -T "border='1' width='50%'" -c "SELECT * FROM pg_tables LIMIT 3;" > table_output.html
echo "Salida HTML generada en 'table_output.html' con atributos personalizados."
# Uso práctico: Agregar estilo o configuraciones a tablas HTML exportadas.

# 9. -x, --expanded
echo "Mostrando salida en modo expandido con --expanded:"
psql -d mi_base -x -c "SELECT * FROM pg_tables LIMIT 1;"
# Uso práctico: Ver datos de forma detallada y legible para tablas con muchas columnas.

# 10. -z, --field-separator-zero
echo "Usando byte cero como separador de campos con --field-separator-zero:"
psql -d mi_base -A -z -c "SELECT * FROM pg_tables LIMIT 3;"
# Uso práctico: Exportar datos en un formato binario donde los separadores son bytes cero.

# 11. -0, --record-separator-zero
echo "Usando byte cero como separador de filas con --record-separator-zero:"
psql -d mi_base -A -0 -c "SELECT * FROM pg_tables LIMIT 3;"
# Uso práctico: Exportar datos en un formato binario con delimitadores de fila personalizados.

# ======================================
# Notas:
# 1. Estas opciones permiten personalizar la salida de consultas en psql para diferentes casos de uso.
# 2. Exportar datos en formatos específicos como CSV o HTML es ideal para compartir o procesar resultados.
# 3. Opciones como `--no-align` y `--tuples-only` son útiles para integración con herramientas externas.
# 4
