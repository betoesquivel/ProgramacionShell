#!/bin/bash

factorial()
{
	if [ $1 -le 1 ]
	then
		return 1
	else
		anterior=$[$1-1]
		factorial $anterior
		#regresa la multiplicacion del return por mi parametro
		return $[$1*$?]
	fi
}

#mando a llamar factorial recursivo con el parametro con el que se llamo el script
factorial $1
#imprimo resultado de funcion factorial
echo "$?" 
