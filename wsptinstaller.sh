#!/bin/bash

##################
YELLOW="\e[1;33m"
GREEN="\e[1;32m"
RED="\e[1;31m"
##################

echo -e "${YELLOW}[*]Installing necessary packages..."

apt update -y
apt install nmap -y
apt install nmap-ncat -y

echo -e "${YELLOW}[*]Checking packages..."

sleep 1

if [ -e $PREFIX/bin/nmap ]; then
	echo -e "${GREEN}[√]Nmap is already installed"
	sleep 1
else
	echo -e "${RED}[!]Nmap is not installed"
	sleep 1
fi

if [ -e $PREFIX/bin/ncat ]; then
	echo -e "${GREEN}[√]Ncat is already installed"
	sleep 1
else
	echo -e "${RED}[!]Ncat is not installed"
	sleep 1
fi

if [ -e $PREFIX/bin/nmap ]; then
        echo -e "${GREEN}[√]Nmap is good"
        sleep 1
else
        echo -e "${RED}[!]Nmap is bad"
	sleep 1
fi

if [ -e $PREFIX/bin/ncat ]; then
        echo -e "${GREEN}[√]Ncat is good"
        sleep 1
else
        echo -e "${RED}[!]Ncat is bad"
	sleep 1
fi

###############################
