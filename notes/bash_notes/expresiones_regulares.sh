#!/bin/bash

 ======================================
# Resumen de Uso y Aplicaciones
# ======================================
# 1. =~ se utiliza para validar patrones en variables mediante expresiones regulares.
# 2. Útil para validar formatos como números de teléfono, correos electrónicos o nombres.
# 3. Las expresiones regulares permiten definir reglas estrictas para las entradas.
# 4. Evita errores al procesar datos al asegurarse de que cumplan el formato esperado.
# ======================================

# Ejemplo 1: Validar si una pregunta termina con un signo de interrogación
echo "Por favor, escribe una pregunta (debe terminar con '?'):"
QUESTION=""
until [[ $QUESTION =~ \?$ ]]; do
  read -p "Pregunta: " QUESTION
  if [[ ! $QUESTION =~ \?$ ]]; then
    echo "La pregunta debe terminar con '?' Intenta nuevamente."
  fi
done
echo "Pregunta válida: $QUESTION"
# Uso práctico: Asegurarse de que una entrada cumpla un formato esperado.

# Ejemplo 2: Validar un número de teléfono (formato: 123-456-7890)
echo "Por favor, ingresa un número de teléfono en el formato 123-456-7890:"
PHONE=""
read PHONE
if [[ $PHONE =~ ^[0-9]{3}-[0-9]{3}-[0-9]{4}$ ]]; then
  echo "Número de teléfono válido: $PHONE"
else
  echo "Número de teléfono inválido. Asegúrate de usar el formato correcto."
fi
# Uso práctico: Validar entradas como números de teléfono, direcciones de correo, etc.

# Ejemplo 3: Validar una dirección de correo electrónico
echo "Por favor, ingresa tu correo electrónico:"
EMAIL=""
read EMAIL
if [[ $EMAIL =~ ^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$ ]]; then
  echo "Correo electrónico válido: $EMAIL"
else
  echo "Correo electrónico inválido. Asegúrate de usar un formato como usuario@dominio.com."
fi
# Uso práctico: Validar entradas de correo electrónico antes de continuar con el script.

# Ejemplo 4: Verificar si una cadena contiene solo letras
echo "Por favor, ingresa un texto que contenga solo letras:"
TEXT=""
read TEXT
if [[ $TEXT =~ ^[a-zA-Z]+$ ]]; then
  echo "Texto válido: $TEXT"
else
  echo "Texto inválido. Solo se permiten letras."
fi
# Uso práctico: Asegurar que una entrada contenga únicamente caracteres alfabéticos.

#