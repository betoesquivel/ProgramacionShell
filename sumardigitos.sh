#!/bin/bash

#objetivo: sumar los digitos de el numero enviado como parametro

num=$1
suma=0
while [ $num -gt 0 ]; do
	suma=$[$suma+$num%10]
	num=$[$num/10]
done
echo $suma
