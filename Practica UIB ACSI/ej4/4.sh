#Quiniela

#Variables
let num=0
let numMax=15
let rand=0
#End Variables
#Posible results
results=(X 1 2)

#Generator loop
while [ $num -lt $numMax ];
do
	#Generate random from list 'result'
	rand=$(( ( RANDOM % 3 ) ))
	let num=$num+1
	echo $num'.-'${results[$rand]}

done
