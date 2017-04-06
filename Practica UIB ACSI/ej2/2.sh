
#!/bin/bash

#Variables
###############
let num=$1
let aux=0
OPTION=''
STR=''
CHR='*'
################

#Exception parameter number control
if [ $# -gt 1 ] || [ $1 -lt 1 ];then
	echo 'Only put one parameter number (distinct zero).'
	exit
fi
#Compare if the size is too much big 
#We decide to set 30 like size too much big
if [ $1 -gt 30 ];then
	echo 'The output is bigger than windows size,'
        echo 'Would you like redirect output in a file(Y/N)?'
        read OPTION
	#Control caracter input
	if [ $OPTION=='Y' ] || [ $OPTION=='y' ] || [ $OPTION=='N' ] || [ $OPTION=='n' ];then
		#option value confirmation
		OPTION=$OPTION
		if [ $OPTION=='Y' ] || [ $OPTION=='y' ];then
			echo Redirecting to file named  output2sh.txt...
		fi
	else
		echo Bad Option. Exit
		exit
	fi
else
	OPTION='X'
fi

#Draw triangle code
while [ $aux -lt $num ];
do
	let aux2=0
	while [ $aux2 -lt $(($num-$aux)) ];
	do
		STR=$STR' '
		let aux2=$aux2+1
	done
	STR=$STR$CHR
	#If triangle is greater than 30 stdout in file
	if [ $OPTION = 'X' ] || [ $OPTION = 'N' ] || [ $OPTION = 'n' ];then
		printf "$STR\n"
	else
		printf "$STR\n" >> ej2/out2sh.txt
	fi

	let aux=$aux+1
	STR=""
	CHR=$CHR"**"
done


