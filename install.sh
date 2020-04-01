#!/bin/bash
clear
echo "##############################################"
echo "#--#######--#88888888888888888888#--#######--#"
echo "##--#####--##88   1. Termux    88##--#####--##"
echo "###--###--###88   2. Other     88###--###--###"
echo "####--#--####88   3. iSH       88####--#--####"
echo "###--###--###88888888888888888888###--###--###"
echo "##--#####--##88 Choose 1/2/3:  88##--#####--##"
echo "#--#######--#88888888888888888888#--#######--#"
echo "##############################################"
read numb
if [ $numb = "1" ]
then
	pkg install python
	pkg install python3
	pkg install python3-pip
	pkg install dos2unix
	pip3 install requests
	pip3 install colorama
	cp ~/Bomber-Beta /spammer.py /data/data/com.termux/files/usr/bin/Bomber-Beta 
	dos2unix /data/data/com.termux/files/usr/bin/Bomber-Beta 
	chmod 777 /data/data/com.termux/files/usr/bin/Bomber-Beta 
	python3 Bomber-Beta/spammer.py 
else
	if [ $numb = "2" ]
	then

		if [ "$(whoami)" != 'root' ];
		then
			echo "You have no rights. Run install.sh with root (sudo sh ~/Bomber-Beta /install.sh)"
			exit
		else
			apt install python3 python3-pip
			pip3 install requests
			pip3 install colorama
			cp ~/Bomber-Beta /spammer.py /usr/bin/Bomber-Beta 
			dos2unix /usr/bin/Bomber-Beta Bomber-Beta 
			chmod 777 /usr/bin/Bomber-Beta 
			python3 Bomber-Beta/spammer.py   
		fi
	else
		if [ $numb = "3" ] 
		then
			apk add python
			apk add python3
			apk add dos2unix
			pip3 install requests
			pip3 install colorama
			cp ~/Bomber-Beta /spammer.py /usr/bin/Bomber-Beta 
			dos2unix /usr/bin/Bomber-Beta 
			chmod 777 /usr/bin/Bomber-Beta 
			python3 Bomber-Beta/spammer.py  
		else
			echo "Invalid input"
		fi
	fi
fi
