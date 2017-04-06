#!/bin/bash

fichero=$1
NPAR=$#

#si el numero de parametros es diferente a 1, error
if [ $NPAR -ne 1 ]; then
echo "error en el numero de parametros"

else #sino, leer fichero por linea
cat $fichero | while read line
do
	echo $(echo $line | tr '[:upper:]' '[:lower:]' | tr " " "\n" | sed 's/[^a-z 0-9]//g' | sort -u | sort | tr "\n" " ")
done
fi
