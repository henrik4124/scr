#!/bin/bash

## info til script

beta=4124-beta
offs=4124

## fjerner alt tidligere i terminalen
clear

## liten meme før start av program (kan slenge med alt du trenger før start av program)
if [ -d "$mappe" ]
echo "Follow instructions next time..."

## stille kommandoer etter meme

clear
mappe=/home/$USER/Desktop/4124-beta
if [ -d "$mappe" ]; then

	echo "$USER seems to have $beta installed!"
	sleep 3
	clear

else
 
	echo "$beta is not installed, installing!"
	sleep 3
	mkdir  /home/$USER/Desktop/4124-beta
	sleep 5
	cd /home/$USER/Desktop/4124-beta
	sleep 3
	git clone https://github.com/henrik4124/scr
	sleep 1
	cd 
	sleep 2
	clear
	echo     "      ____         __       ____  _____                __    __         "
	echo      "    /  _/__  ___ / /____ _/ / / / ___/__  __ _  ___  / /__ / /____   "
	echo      "    / // _ \(_-</ __/ _  / / / / /__/ _ \/  ' \/ _ \/ / -_) __/ -_)  "
	echo      "  /___/_//_/___/\__/\_,_/_/_/  \___/\___/_/_/_/ .__/_/\__/\__/\__/   "
	echo      "                                            /_/                     "
	echo "Restart from the new directory!"

	sleep 5
	exit
fi


sleep 2
echo "Checking $USER for SUDO pwrs.."
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
    m=$?
done

## avslutter med en feil kode og fjerner historie
clear
sleep 5
echo " Error: 01..."
sleep 1
echo " Exiting.."
sleep 3
clear
sleep 1
exit 
