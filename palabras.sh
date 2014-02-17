#!/bin/bash

#objetivo: identificar las palabras diferentes que hay en un archivo recibido como argumento.
#Guardar en un archivo, tambien recibido como argumento, cada palabra diferente, seguida de la cantidad de veces que se repite

#referencias: 
#http://stackoverflow.com/questions/229551/string-contains-in-bash
#http://stackoverflow.com/questions/10929453/bash-scripting-read-file-line-by-line

#guardo el argumento con el nombre del archivo entrada en archivoEntrada
archivoEntrada=$1

#guardo el argumento con el nombre del archivo salida en archivoSalida
archivoSalida=$2

#imprimo mis dos arreglos en el archivo de salida
# imprimirSalida()
# {
# 
# }

palabras=""
regex="palabras([:punct:])?"
resultado=""
while read -r line
do
    for word in $line; do
	    echo $word
	    shopt -s nocasematch
	    if [[ "$word" =~ $regex ]]; then
		    echo "Ya esta en mi string."
	    else
		    echo "Agregando al string..."
		    palabras+="$word 1 "
	    fi
    done
done < "$archivoEntrada"
#leo del archivo texto3.txt

echo "$palabras"


