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

#variable que me sirve como archivo temporal
archivoTemporal="temp.txt"

palabras=""
regex="([:punct:])?"
resultado=""

cat $archivoEntrada | tr '[:upper:]' '[:lower:]' | tr -d '[:punct:]' > $archivoTemporal

#borro contenidos archivo salida
echo "" > $archivoSalida

while read -r line
do
    for word in $line; do
		resultado=""
		resultado=`echo $palabras | grep -o $word`
		if [[ $resultado != "" ]]; then
			resultado=""
		else
			resultado=`cat $archivoTemporal | grep -o $word | wc -l`
			resultado+=" $word" 
			palabras+="$resultado"
			#imprimo el resultado en el archivo salida
			echo $resultado >> $archivoSalida
		fi
    done
done < $archivoTemporal 
#leo del archivo texto3.txt



