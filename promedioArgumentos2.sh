#!/bin/bash

#objetivo: Calcular el promedio de los argumentos enviados

suma=0.0
for num in "$@"; do
	suma=`expr $suma+$num | bc -l`
done

# para guardar resultado de comandos en una variable, uso `
# el comando expr regresa la respuesta de la division
# el comando bc le da formato de flotante

promedio=`expr $suma/$#|bc -l`
echo $promedio 
