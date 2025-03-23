#!/bin/bash

# Este script calcula el interés simple.

# Solicitar al usuario los valores de capital, tasa de interés y tiempo
echo "Ingrese el capital inicial:"
read capital
echo "Ingrese la tasa de interés anual (en porcentaje):"
read tasa
echo "Ingrese el tiempo en años:"
read tiempo

# Calcular el interés simple
interes=$(echo "$capital * $tasa * $tiempo / 100" | bc)

# Calcular el monto total (capital + interés)
monto_total=$(echo "$capital + $interes" | bc)

# Mostrar los resultados
echo "El interés simple es: $interes"
echo "El monto total a pagar es: $monto_total"
