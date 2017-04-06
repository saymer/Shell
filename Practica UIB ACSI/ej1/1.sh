#!/bin/bash

if [ "$#" -lt 1 ]; then
    echo "ERROR: Numero de argumentos incorrecto";
    exit;
fi

    echo "FICHERO                     MEDIANA"
    echo "---------------------------------------";

for i in ${*:1} 
do
    echo;

    numeros=( $(cat $i | sort -n) );
    
    n=${#numeros[@]}; #n es la cantidad de numeros que tiene el fichero
    
    if (( ($n  % 2) == 0))
    then #para fichero con numeros pares
	#la mediana es la media aritmetica de los 2
	#valores centrales
        m1=${numeros[($n/2)-1]};
        m2=${numeros[$n/2]};
        sum=$((m1+m2));
        mediana=$((sum/2)); 
        echo $i"                   "$mediana
#echo 
    else #para fichero con numeros impares
	#la mediana es el valor central
    
        echo $i"                   "${numeros[$n/2]};
    fi
    
done
