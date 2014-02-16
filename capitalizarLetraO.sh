#!/bin/bash

#objetivo: Como esta redactada la pregunta, hay que capitalizar todo el archivo. Como esta
#redactado el ejemplo, hay que capitalizar solamente la letra O. Hice esto ultimo.

#referencias: 
#http://stackoverflow.com/questions/229551/string-contains-in-bash
#http://stackoverflow.com/questions/10929453/bash-scripting-read-file-line-by-line
#http://stackoverflow.com/questions/10551981/how-to-perform-a-for-loop-on-each-character-in-a-string-in-bash

archivo="texto3.txt"
archivoSalida="capitalizarO.txt"

#borro contenidos archivo
echo > $archivoSalida

while read -r line
do
	oracion=""
	for word in $line; do
		# word+=$(echo $word | tr '[:lower:]' '[:upper:]')
		palabra=""
		for (( i=0; i<${#word}; i++ )); do
			letra=${word:$i:1}
			if [[ $letra == "o" ]]; then
				letra="O"
			fi
			palabra+=$letra
		done
		oracion+=$palabra" "
	done
	echo $oracion >> $archivoSalida
done < "$archivo"
#leo del archivo texto3.txt

