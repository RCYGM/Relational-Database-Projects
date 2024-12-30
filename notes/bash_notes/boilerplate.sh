#!/bin/bash

# ======================================
# Resumen de comandos avanzados y su propósito
# ======================================
# pwd      -> Ver el directorio actual.
# mkdir    -> Crear un directorio.
# touch    -> Crear archivos vacíos.
# echo     -> Escribir texto en archivos.
# ls       -> Listar archivos y carpetas.
# cat      -> Ver el contenido de archivos.
# cp       -> Copiar archivos o directorios.
# mv       -> Mover o renombrar archivos/directorios.
# rm       -> Eliminar archivos/directorios.
# chmod    -> Cambiar permisos de archivos.
# find     -> Buscar archivos o carpetas.
# grep     -> Buscar texto dentro de archivos.
# wc       -> Contar líneas, palabras y caracteres.
# sed      -> Editar texto en archivos.
# curl     -> Descargar archivos desde internet.
# tar      -> Comprimir/descomprimir archivos.
# zip      -> Comprimir en formato ZIP.
# unzip    -> Extraer archivos ZIP.
# diff     -> Comparar diferencias entre archivos.
# nano/vim -> Editar archivos en la terminal.
# alias    -> Crear atajos para comandos.
# ======================================

# Comandos fundamentales de Bash para la construcción de un Boilerplate
# ======================================

# 1. pwd: Imprime el directorio actual
echo "Directorio actual:"
pwd
# Uso práctico: Verifica en qué parte del sistema de archivos estás trabajando.

# 2. mkdir: Crea un directorio
echo "Creando un directorio para el proyecto..."
mkdir website_boilerplate
cd website_boilerplate
# Uso práctico: Crea una estructura de carpetas para el proyecto.

# 3. touch: Crea un archivo vacío
echo "Creando archivos principales del proyecto..."
touch index.html style.css script.js
# Uso práctico: Inicializa archivos vacíos para el boilerplate del sitio web.

# 4. echo: Escribe texto en la terminal o dentro de un archivo
echo "Escribiendo el contenido inicial de index.html..."
echo "<!DOCTYPE html>
<html>
<head>
  <title>Boilerplate</title>
  <link rel='stylesheet' href='style.css'>
</head>
<body>
  <script src='script.js'></script>
</body>
</html>" > index.html
# Uso práctico: Rellena los archivos creados con contenido básico.

# 5. ls: Lista los archivos y directorios en el directorio actual
echo "Archivos en el directorio actual:"
ls
# Uso práctico: Verifica los archivos y carpetas creados en tu proyecto.

# 6. cat: Muestra el contenido de un archivo
echo "Contenido del archivo index.html:"
cat index.html
# Uso práctico: Revisa el contenido de tus archivos directamente en la terminal.

# 7. cp: Copia archivos o directorios
echo "Creando una copia de seguridad de index.html..."
cp index.html index_backup.html
# Uso práctico: Realiza copias de seguridad de tus archivos antes de hacer cambios importantes.

# 8. mv: Mueve o renombra archivos o directorios
echo "Renombrando script.js a main.js..."
mv script.js main.js
# Uso práctico: Renombra archivos para mantener la organización del proyecto.

# 9. rm: Elimina archivos o directorios
echo "Eliminando el archivo de respaldo..."
rm index_backup.html
# Uso práctico: Limpia archivos innecesarios o duplicados en tu proyecto.

# 10. chmod: Cambia los permisos de un archivo
echo "Haciendo ejecutable este script Bash..."
chmod +x boilerplate.sh
# Uso práctico: Da permisos de ejecución a un archivo de script.

# 11. find: Busca archivos y directorios
echo "Buscando archivos con extensión .html..."
find . -name "*.html"
# Uso práctico: Encuentra rápidamente archivos específicos en tu proyecto.

# 12. grep: Busca texto dentro de archivos
echo "Buscando la palabra 'script' en index.html..."
grep "script" index.html
# Uso práctico: Localiza secciones específicas dentro de archivos.

# 13. wc: Cuenta líneas, palabras y caracteres en un archivo
echo "Contando líneas, palabras y caracteres en index.html..."
wc index.html
# Uso práctico: Analiza estadísticas básicas de tus archivos.

# 14. sed: Modifica texto en un archivo
echo "Cambiando el título de la página en index.html..."
sed -i 's/Boilerplate/My Awesome Site/' index.html
# Uso práctico: Edita texto en archivos directamente desde la línea de comandos.

# 15. curl o wget: Descarga archivos desde la web
echo "Descargando un archivo de plantilla CSS..."
curl -O https://example.com/plantilla.css
# Uso práctico: Obtén recursos directamente desde internet.

# 16. tar: Comprime y descomprime archivos
echo "Creando un archivo comprimido del proyecto..."
tar -czf website_boilerplate.tar.gz .
# Uso práctico: Crea copias comprimidas de todo tu proyecto para compartir o respaldar.

# 17. zip: Comprime archivos en formato .zip
echo "Comprimendo el proyecto en formato .zip..."
zip -r website_boilerplate.zip .
# Uso práctico: Alternativa a tar para crear archivos comprimidos.

# 18. unzip: Extrae archivos comprimidos
echo "Extrayendo el archivo .zip del proyecto..."
unzip website_boilerplate.zip -d extracted_project
# Uso práctico: Descomprime proyectos enviados o descargados.

# 19. diff: Compara diferencias entre dos archivos
echo "Comparando index.html y main.js..."
diff index.html main.js
# Uso práctico: Encuentra diferencias entre archivos similares.

# 20. nano, vim o vi: Editores de texto en la terminal
# (Depende de cuál tengas instalado)
echo "Editando index.html con nano..."
nano index.html
# Uso práctico: Realiza ediciones rápidas sin salir de la terminal.

# 21. alias: Crea atajos para comandos
echo "Creando un alias para limpiar la pantalla..."
alias cls='clear'
cls
# Uso práctico: Acelera tareas repetitivas.



