#!/bin/bash

CONT=0
PALABRA="a"
SALIR="salir"
NUM="El numero de palabras introducidas es : "
ADIOS="! Hasta la proxima ! "

until [ "$PALABRA" = $SALIR ];do
read PALABRA
let CONT=$CONT+1
done

let CONT=$CONT-1

echo $NUM $CONT
echo $ADIOS
