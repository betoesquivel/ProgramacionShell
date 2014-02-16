#!/bin/bash

#objetivo: Dado un archivo con 10,000 oraciones, cada oracion en una linea diferente. 
#recibir como argumento una palabra y contar las oraciones en las que aparece una palabra

#referencias: 
#http://stackoverflow.com/questions/229551/string-contains-in-bash
#http://stackoverflow.com/questions/10929453/bash-scripting-read-file-line-by-line

archivo="texto3.txt"
contadorOraciones=0;

while read -r line
do
    oracion=$line
    #ignora la capitalizacion
    shopt -s nocasematch
    if [[ $oracion == *$1* ]]; then
	    contadorOraciones=$[$contadorOraciones+1]
    fi
    # echo $line
done < "$archivo"
#leo del archivo texto3.txt

echo "$contadorOraciones"
