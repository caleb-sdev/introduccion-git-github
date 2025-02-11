#!/bin/bash

# Verificar que se hayan proporcionado tres parámetros
if [ "$#" -ne 3 ]; then
  echo "Uso: $0 <Principal> <Tasa de interés> <Tiempo en años>"
  exit 1
fi

# Obtener los parámetros
principal=$1
tasa_interes=$2
tiempo=$3

# Validar que los parámetros sean números
if ! [[ "$principal" =~ ^[0-9]+([.][0-9]+)?$ ]] || ! [[ "$tasa_interes" =~ ^[0-9]+([.][0-9]+)?$ ]] || ! [[ "$tiempo" =~ ^[0-9]+([.][0-9]+)?$ ]]; then
  echo "Por favor, ingresa valores numéricos válidos."
  exit 2
fi

# Calcular el interés simple
interes=$(echo "$principal * $tasa_interes * $tiempo / 100" | bc -l)

# Mostrar el resultado
echo "El interés simple es: $interes"
