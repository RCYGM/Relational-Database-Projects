#!/bin/bash

# ======================================
# Resumen de Funciones y Estructuras en Bash
# ======================================
# RANDOM        -> Genera números aleatorios.
# if...elif...else -> Estructuras condicionales para control de flujo.
# until         -> Bucle que continúa hasta que una condición se cumpla.
# while         -> Bucle que se ejecuta mientras una condición sea verdadera.
# Funciones personalizadas:
# GET_FORTUNE   -> Ejemplo de una función definida por el usuario.
# ======================================

# 1. RANDOM: Generador de números aleatorios
echo "Generando un número aleatorio entre 1 y 75:"
NUMBER=$(( RANDOM % 75 + 1 ))
echo "Número generado: $NUMBER"
# Uso práctico: Utilizado para simulaciones, sorteos o generación de datos de prueba.

# 2. if...elif...else: Estructuras condicionales
echo "Evaluando el número generado..."
if (( NUMBER <= 25 )); then
  echo "El número $NUMBER es bajo (<= 25)."
elif (( NUMBER > 25 && NUMBER <= 50 )); then
  echo "El número $NUMBER es medio (entre 26 y 50)."
else
  echo "El número $NUMBER es alto (> 50)."
fi
# Uso práctico: Controlar el flujo de ejecución según valores o condiciones.

# 3. until: Bucle que continúa hasta que una condición sea verdadera
echo "Ejemplo de bucle until: Responder con una pregunta."
QUESTION=""
until [[ $QUESTION =~ \?$ ]]; do
  read -p "Por favor, haz una pregunta: " QUESTION
done
echo "Gracias por tu pregunta: $QUESTION"
# Uso práctico: Repetir acciones hasta que se cumpla un requisito.

# 4. while: Bucle que se ejecuta mientras una condición sea verdadera
echo "Ejemplo de cuenta regresiva con while:"
I=5
while [[ $I -ge 0 ]]; do
  echo "Cuenta regresiva: $I"
  (( I-- ))
done
echo "¡Despegue!"
# Uso práctico: Ejecutar tareas repetitivas mientras una condición siga siendo válida.

# 5. Funciones personalizadas
# GET_FORTUNE: Función definida por el usuario para manejar preguntas y respuestas
GET_FORTUNE() {
  RESPONSES=("Sí, definitivamente." "No, lo dudo mucho." "Tal vez, inténtalo." "No puedo responder ahora.")
  RANDOM_INDEX=$(( RANDOM % ${#RESPONSES[@]} ))
  echo "${RESPONSES[$RANDOM_INDEX]}"
}

# Llamando a la función GET_FORTUNE
echo "Ejemplo de función personalizada GET_FORTUNE:"
GET_FORTUNE
# Uso práctico: Reutilizar lógica específica en diferentes partes del script.

# ======================================
# Resumen de Uso y Aplicaciones
# ======================================
# 1. RANDOM genera números aleatorios que puedes usar para simulaciones o sorteos.
# 2. if...elif...else permite manejar flujos de decisión complejos.
# 3. until y while son esenciales para bucles controlados por condiciones específicas.
# 4. Funciones personalizadas mejoran la reutilización y organización del código.
# ======================================


