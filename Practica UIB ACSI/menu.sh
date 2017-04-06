# Menu.sh file
#Create a UI to interactuate with scripts

#!/bin/bash

#Variables
let option
exit=false
com = ""
#End variables

#Auxiliar function to print menu
PrintMenu () {
     option=""
    echo -e "\n\n"
    echo "        ╔════════════════════════╗"
    echo "        ║  SHELL MENU FOR ACSI   ║"
    echo "        ╚════════════════════════╝"
    echo ""
    echo "Please choose one option from the list:"
    echo ""
    echo "  (1)  Script 1 - Calculate average of files"
    echo "  (2)  Script 2 - Make isoscel triangle"
    echo "  (3)  Script 3 - Words of text"
    echo "  (4)  Script 4 - Quiniela"
    echo "  (5)  Script 5 - Enter/'salir' from user"
    echo "  (6)  Script 6 - Like 5 with redirection to file"
    echo "  (7)  Script 7 - Like 5 and 6 with numbers"
    echo "  (8)  Script 8 - Virtual Memory Occupied"
    echo ""
    echo "If you want exit please write: 0"
    echo ""
    read option
}




#Loop for menu. Execute script selected and show menu each time.
option=-1
while [ $option -ne 0 ]; do
    # while [ [ $option -lt 1 ] && [ $option -gt 8 ] ]; do
    #     echo "Incorrect selection, please choose one from list (number):"
    #     read option
        
    # done
    PrintMenu
case $option in
	"1") #Script 1
     echo "Write name of the first file:"
    	source ej1/ej1.sh "ej1/numeros1.txt ej1/numeros2.txt ej1/numeros3.txt"

    ;;
	"2") #Script 2
     echo "¿Size of triangle?: "
     read com
	source ej2/2.sh $com
    ;;
 	"3") #Script 3
    	source ej3/3.sh "ej3/texto.txt"
    ;;
    "4") #Script 4, no arguments
    	source ej4/4.sh
    ;;
    "5") #Script 5, no arguments
    	sh ./ej5/5.sh
    ;;
    "6") #Script 6, no arguments
    	sh ./ej6/6.sh
    ;;
    "7") #Script 7, no arguments
    	sh ./ej7/7.sh
    ;;
    "8") #Script 8, no arguments
    	source ej8/8.sh
            ;;
    "0") 
        exit
esac
done


















