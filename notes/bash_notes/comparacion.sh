#!/bin/bash

# ======================================
# Resumen de Operadores de Comparación
# ======================================
# <=  -> Menor o igual que (versión aritmética).
# -le -> Menor o igual que (versión de Bash).
# <   -> Menor que (versión aritmética).
# -lt -> Menor que (versión de Bash).
# -gt -> Mayor que (versión de Bash).
# >=  -> Mayor o igual que (versión aritmética).
# -ge -> Mayor o igual que (versión de Bash).
# ======================================


# Ejemplo de Operadores de Comparación en Bash
# ======================================

# 1. <=: Menor o igual que (versión aritmética)
# Verifica si un número es menor o igual a 15
echo "Usando <= para verificar si un número es menor o igual a 15:"
NUMBER=10
if (( NUMBER <= 15 )); then
  echo "El número $NUMBER es menor o igual a 15."
else
  echo "El número $NUMBER es mayor que 15."
fi
# Uso práctico: Validar límites numéricos.

# 2. -le: Menor o igual que (versión de Bash)
echo "Usando -le para verificar si un número es menor o igual a 30:"
NUMBER=25
if [[ $NUMBER -le 30 ]]; then
  echo "El número $NUMBER es menor o igual a 30."
else
  echo "El número $NUMBER es mayor que 30."
fi
# Uso práctico: Comprobar valores en condiciones específicas.

# 3. <: Menor que (versión aritmética)
echo "Usando < para verificar si un número es menor que 46:"
NUMBER=40
if (( NUMBER < 46 )); then
  echo "El número $NUMBER es menor que 46."
else
  echo "El número $NUMBER es mayor o igual a 46."
fi
# Uso práctico: Comparar valores con un límite.

# 4. -lt: Menor que (versión de Bash)
echo "Usando -lt para verificar si un número es menor que 61:"
NUMBER=60
if [[ $NUMBER -lt 61 ]]; then
  echo "El número $NUMBER es menor que 61."
else
  echo "El número $NUMBER es mayor o igual a 61."
fi
# Uso práctico: Validar valores en límites inferiores.

# 5. -gt: Mayor que (versión de Bash)
echo "Usando -gt para verificar si el primer argumento es mayor que 0:"
if [[ $1 -gt 0 ]]; then
  echo "El argumento $1 es mayor que 0."
else
  echo "El argumento $1 no es mayor que 0."
fi
# Uso práctico: Verificar argumentos positivos al ejecutar el script.

# 6. >=: Mayor o igual que (versión aritmética)
echo "Usando >= para un bucle que cuenta hacia atrás:"
I=5
while (( I >= 0 )); do
  echo "Cuenta regresiva: $I"
  (( I-- ))
done
# Uso práctico: Crear bucles para tareas repetitivas con condiciones de comparación.

# 7. -ge: Mayor o igual que (versión de Bash)
echo "Usando -ge para ejecutar una cuenta regresiva:"
J=3
while [[ $J -ge 0 ]]; do
  echo "Cuenta regresiva: $J"
  (( J-- ))
done
# Uso práctico: Alternativa para crear bucles descendentes con sintaxis de Bash.



# ======================================
# Notas:
# 1. Los operadores aritméticos (( )) son más fáciles de leer para cálculos numéricos.
# 2. Los operadores específicos de Bash ([[ ]]) son más versátiles y se utilizan para múltiples tipos de comparación.
# 3. Siempre utiliza la sintaxis adecuada para evitar errores al trabajar con condiciones en Bash.

echo "¡Ejemplos completados exitosamente!"
