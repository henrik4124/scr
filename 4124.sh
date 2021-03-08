#!/bin/bash

## info til script

beta=4124-beta
offs=4124

red=`tput setaf 1`
green=`tput setaf 2`
blue=`tput setaf 4`
nc=`tput sgr0`


meny(){
clear
sleep 2

echo "${green}"
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
echo "${nc}"
echo "${blue}" "                4124 script ${nc} ${green} 1.9.0       ${nc}"
echo "             ${blue}    Welcome Back${nc} ${green} $USER ${nc}"

echo "1) VPN"
echo "2) nmap scan"
echo "3) dir search"
echo "4) Quit"

	menyvalg

}

menyvalg(){

read svar
	
	if [ $svar == 1 ];
		
		then

			clear

            	echo "VPN choosen"
            	cd $mappe
            	cd kali-anonsurf
            	echo "Turn VPN off or on?"

            	read VPN

            	if [ $VPN == on ];
            
        		    then

            			sudo anonsurf start

            			echo "VPN is on"
            			
            			echo " "
        				echo "returning to main menu"

            			sleep 5

            			meny

        			else

        				sudo anonsurf stop

        				echo "VPN is now turned off"
        				
        				echo " "
        				echo "returning to main menu"
        				
        				sleep 5

        				meny

        		fi
    fi


    if [ $svar == 2 ];

    	then

            clear
            nmap
   fi


   if [ $svar == 3 ];

   		then

   			echo "directory search is choosen"
            sleep 2

            echo "Select ip adress (with port) to scan: "
            read IP

            cd $mappe
            cd dirsearch

            python3 dirsearch.py -e dir -u $IP

            echo " "
        	echo "returning to main menu"

            sleep 5

            meny
   fi

   if [ $svar == 4 ];

   		then
  	 	
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

  fi

}


nmapm(){

		clear
            echo "    ___  __   _____   ___        _   _ ___  ___  ___  ______ "
			echo "   /   |/  | / __  \ /   |      | \ | ||  \/  | / _ \ | ___ \ " 
			echo "  / /| |\`| | \`' / /'/ /| |___   |  \| || .  . |/ /_\ \| |_/ / "
			echo " / /_| | | |   / / / /_| / __|  | . \` || |\/| ||  _  ||  __/ "
			echo " \___  |_| |_./ /__\___  \__ \  | |\  || |  | || | | || |    "
			echo "     |_/\___/\_____/   |_/___/  \_| \_/\_|  |_/\_| |_/\_|    "
			echo "                                                             "
			echo "                                                            "
            sleep 2
            
            echo "what type off nmap scan do you wish to do?"
            echo "-------------------------------------------"
			echo "1) scan a ip"           
            echo "2) scan for subnets"
            echo "3) scan for open ports"
            echo "4) scan for os & services"
            echo "5) scan for ddos reflector"
            echo "6) hearthbleed testing"
            echo "7) return to menu"

            	read nmap

            if [ $nmap == 1 ];
            	
            	then

            		echo "What ip do you wish to scan?"

            			read nip

            		nmap $nip

            		echo "returning to nmap menu (10s)"

            		sleep 10
            		nmapm

            fi

            if [ $nmap == 2 ];
            	
            	then

            		echo "what is the ip for the subnets? (ends with 0)"

            			read subip

            		nmap $subip/24
            		
            		echo "returning to nmap menu (10s)"

            		sleep 10
            		nmapm

            fi

            if [ $nmap == 3 ];
            	
            	then

            		echo "what ip do you want to scan for open ports?"

            			read portip

            		nmap -p- $portip
            		
            		echo "returning to nmap menu (10s)"

            		sleep 10
            		nmapm

            fi

            if [ $nmap == 4 ];
            	
            	then

            		echo "what is the ip you want to scan for os & services?"

            			read osip

            		nmap -A $osip

            		echo "returning to nmap menu (10s)"

            		sleep 10
            		nmapm

            fi

            if [ $nmap == 5 ];
            	
            	then

            		echo "being devolped"
            		
            		sleep 2

            		echo "returning to nmap menu (10s)"

            		sleep 10
            		nmapm

            fi

            if [ $nmap == 6 ];
            	
            	then

            		echo "what subnet do you want to test heartbleed? (ends with 0)"

            			read hbip

            		nmap -sV -p 443 --script=ssl-heartbleed $hbip/24

            		echo "returning to nmap menu (10s)"

            		sleep 10
            		nmapm

            fi

            if [ $nmap == 7 ];
            	
            	then

            		echo "returning to main menu"
            		
            		sleep 4
            		meny

            fi

}

## fjerner alt tidligere i terminalen
clear

## skjekker om mappen som programmet lager finnes
if [ -d "$mappe" ]; then

	echo "Did you even read the readme?.."
	sleep 2

fi

## skjekker om det er retunerende bruker eller første gangs bruker

clear
mappe=/home/$USER/Desktop/4124-beta

	## hvis det er en retunerende bruker sier den velkommen og går til meny

if [ -d "$mappe" ]; then

	echo "${green}"
	echo "               _                          "
	echo "              | |                         "
	echo " _  _  _ _____| | ____ ___  ____  _____   "
	echo "| || || | ___ | |/ ___/ _ \|    \| ___ |  "
	echo "| || || | ____| ( (__| |_| | | | | ____|  "
	echo " \_____/|_____)\_\____\___/|_|_|_|_____)  "
	echo "                                          "  
	echo " $USER ${nc} seems to have ${green} $beta ${nc} installed!   "
	
	sleep 5
	clear

	## går til menyen


		## hvis det er første gangs bruker installerer den alt den trenger

else
 
	echo "${green} $beta ${nc} is not installed"
	sleep 2

	echo "installing.."
	sleep 5
	clear

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
	sleep 1

	sudo apt install python
	sleep 3

	cd kali-anonsurf
	sleep 2

	sudo xterm -e sudo ./installer.sh
	sleep 1

	cd $mappe
	cd scr
	chmod +x test.sh
	chmod +x 4124.sh
	sleep 1

	alias 4124='/home/$USER/Desktop/4124-beta/scr/4124.sh'

	cd 
	sleep 2
	clear
	
	echo     "      ____         __       ____  _____                __    __         "
	echo      "    /  _/__  ___ / /____ _/ / / / ___/__  __ _  ___  / /__ / /____   "
	echo      "    / // _ \(_-</ __/ _  / / / / /__/ _ \/  ' \/ _ \/ / -_) __/ -_)  "
	echo      "  /___/_//_/___/\__/\_,_/_/_/  \___/\___/_/_/_/ .__/_/\__/\__/\__/   "
	echo      "                                            /_/                     "
	echo "Restart the script"
	echo "(open write 4124 in terminal)"

	sleep 5
	exit
fi

##les test.sh for info om denne delen

echo "Checking ${green} $USER ${nc} for SUDO pwrs.."

cd $mappe
sleep 1

cd scr
sleep 1

sudo xterm -e sudo ./test.sh
sleep 2

## retunerer til $

cd

## går til meny void

meny