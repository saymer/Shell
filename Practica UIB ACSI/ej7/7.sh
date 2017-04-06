#!/bin/bash

aux=1
CONT=0
PALABRA="a"
SALIR="salir"
NUM="El numero de palabras introducidas es : "
ADIOS="! Hasta la proxima ! "
ESNUMERO='^-?[0-9]+$'
LINEA=0
echo -n > "palabras.txt" #eliminamos el contenido del fichero
read PALABRA
until [ "$PALABRA" = $SALIR ];do
 	if ! [[ $PALABRA =~ $ESNUMERO ]]; then
 		if [[ $aux -lt 1 ]];then
 			aux = $aux-1
			echo $PALABRA >> palabras.txt
			let CONT=$CONT+1
			read PALABRA
		fi

	else
		LINEA=$PALABRA
		sed -n "${LINEA}p" $"palabras.txt"
	read PALABRA
	fi
done
echo $ADIOS
