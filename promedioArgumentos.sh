#!/bin/bash

#objetivo: Calcular el promedio de los argumentos enviados

suma=0
for num in "$@"; do
	echo "$num"
	suma=$[$suma+$num]
done
echo "$suma"
echo $suma/$#|bc -l
