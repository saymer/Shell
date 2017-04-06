#!/bin/bash

CONT=0
PALABRA="a"
SALIR="salir"
NUM="El numero de palabras introducidas es : "
ADIOS="! Hasta la proxima ! "
read PALABRA
until [ "$PALABRA" = $SALIR ];do


echo $PALABRA >> ej6/palabras.txt

let CONT=$CONT+1
read PALABRA
done

#let CONT=$CONT-1

echo $NUM $CONT
echo $ADIOS
