#!/bin/bash

## info til script

beta=4124-beta
offs=4124

## fjerner alt tidligere i terminalen
clear

## skjekker om mappen som programmet lager finnes
if [ -d "$mappe" ]; then

	echo "Did you even read the readme?.."
	sleep 2

fi

## stille kommandoer etter meme

clear
mappe=/home/$USER/Desktop/4124-beta
if [ -d "$mappe" ]; then

	echo "               _                           _                 _     "
	echo "              | |                         | |               | |    "
	echo " _  _  _ _____| | ____ ___  ____  _____   | |__  _____  ____| |  _ "
	echo "| || || | ___ | |/ ___/ _ \|    \| ___ |  |  _ \(____ |/ ___| |_/ )"
	echo "| || || | ____| ( (__| |_| | | | | ____|  | |_) / ___ ( (___|  _ ( "
	echo " \_____/|_____)\_\____\___/|_|_|_|_____)  |____/\_____|\____|_| \_)"
	echo "                                                                   "  
	echo "            $USER seems to have $beta installed!                   "
	
	sleep 5
	clear

else
 
	echo "$beta is not installed"
	echo "Please activate sudo power"
	sleep 2
	sudo xterm -e sudo ./test.sh
	sleep 5
	mkdir  /home/$USER/Desktop/4124-beta
	sleep 5
	cd /home/$USER/Desktop/4124-beta
	sleep 3
	sudo apt-get install git
	sleep 1
	git clone https://github.com/henrik4124/scr
	sleep 1
	git clone https://github.com/maurosoria/dirsearch
	sleep 1
	git clone https://github.com/Und3rf10w/kali-anonsurf
	sleep 1
	sudo apt install xterm
	sleep 3
	cd kali-anonsurf
	sleep 2
	sudo xterm -e sudo ./installer.sh
	clear
	echo "Downloads complete"
	

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
cd $mappe
sleep 1
sudo xterm -e sudo ./test.sh
sleep 2
cd

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
echo "$blue" "                4124 script 1.9.0       "
echo "                 Welcome Back $USER"

## menyen

PS3='Choose script: '
options=("VPN" "nmap scan" "dir search" "Quit")
select opt in "${options[@]}"
do
    case $opt in

        "VPN")
			clear
            echo "VPN choosen"
            cd $mappe
            cd kali-anonsurf
            sudo anonsurf start
            sleep 10
            ;;

        "nmap scan")
			clear
            echo "nmap choosen"
            sleep 10
            ;;

        "dir search")
            echo "you chose choice $REPLY which is $opt"
            sleep 10
            ;;

        "Quit")

			clear

			echo "                                                          "
			echo " _____         _            _                 _         _ "
			echo "|_   ____ ___ |_|___ ___   | |___ _ _ ___ ___| |_ ___ _| |"
			echo "  | ||  _| . || | .'|   |  | | .'| | |   |  _|   | -_| . |"
			echo "  |_||_| |____| |__,|_|_|  |_|__,|___|_|_|___|_|_|___|___|"
			echo "            |___|                                         ""                                                                                                                                                         "
			echo "                   Enjoy                                  "

			sleep 5

			clear

            exit
            ;;

        *) echo "invalid option $REPLY";;

    esac
done

## avslutter med en feil kode og fjerner historie, denne blir bare aktivert om det er feil i koden

clear
sleep 5
echo " Error: 01..."
sleep 1
echo " Exiting.."
sleep 3
clear
sleep 1
exit 