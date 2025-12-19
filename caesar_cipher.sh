#!/bin/bash


echo "**********************************"
echo "**WELCOME TO CAESAR CYPHER TOOL** "
echo "**********************************"

:
echo "ENTER TEXT TO ENCRYPT: "
echo "PRESS 1 TO ENCRYPT TEXT"
echo "PRESS 2 TO EXIT THE TOOL"
read ch

# Check if input is a digit
if ! [[ "$ch" =~ ^[0-9]+$ ]]
then
	echo "Invalid input: Numbers only (1 or 2)"
	exit 1
fi

if [ "$ch" -eq 1 ]
then 
	    echo "PROVIDE A PLAIN TEXT: "
	    read text
	    # Encrypt with Caesar Cipher (shift by 3)
            encrypted=$(echo "$text" | tr 'A-Za-z' 'D-ZA-Cd-za-c')
	    echo
	    echo "Encrypted Text: $encrypted"
	    echo "THANK YOU FOR USING THE TOOL! "

elif [ "$ch" -eq 2 ]
then 
	echo "Exiting the tool. Goodbye!"

else 
	echo "invalid input. Please choose 1 or 2."
fi
