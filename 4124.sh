#!/bin/bash

## fjerner alt tidligere i terminalen
clear

## liten meme før start av program (kan slenge med alt du trenger før start av program)
echo "Instructions said launch with SUDO lazy ass"

## stille kommandoer etter meme

clear
mappe=/home/henrik/Desktop/4124-test
if [ -d "$mappe" ]; then

	echo "Program seems to be installed!"
	sleep 3
	clear

else
 
	echo "Script is not installed, installing!"
	sleep 3
	mkdir  /home/henrik/Desktop/4124-test
	clear

fi

sleep 2
echo "Reloading with SUDO powers.."
sleep 2

## logo og info
clear
sleep 2
echo "$green" ""
echo "              | || |/_ |__ \| || |                "
echo "              | || |_| |  ) | || |_               "
echo "              |__   _| | / /|__   _|              "
echo "                 | | | |/ /_   | |            	"
echo "                 |_| |_|____|  |_|                "  
echo "                 ____    ________                 "
echo "                /_   |  /   __   \                "
echo "                 |   |  \____    /                "
echo "                 |   |     /    /                 "
echo "                 |___| /\ /____/                  "
echo "                       \/                         "
echo ""
echo "$blue" "                4124 script 0.0.1       "
echo "                 Welcome Back $USER"
echo "  [1]  NMAP scan"
echo "  [2]  DIR SEARCH"


## menyen

read -p "Select script: " mc
return $mc



while [[ "$m" != "3" ]]
do
    if [[ "$m" == "1" ]]; then
        echo "nmap choosen"
	sleep 10

    elif [[ "$m" == "2" ]]; then
        echo "directory search choosen"
	sleep 10
    fi
    showMenu
    m=$?
done
}

## avslutter med en feil kode og fjerner historie
clear
sleep 10
echo " Error: 1..."
sleep 3
echo " Exiting..."
sleep 3
clear
sleep 1
exit 
