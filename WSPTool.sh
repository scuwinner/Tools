#!/bin/bash

cd ~
clear

##################
YELLOW="\e[1;33m"
GREEN="\e[1;32m"
RED="\e[1;31m"
BLUE="\e[1;34m"
PINK="\e[0;35m"
RES="\e[0m"
##################


echo -e "${GREEN}WSPTool 1.0"
echo -e "${RED}-----------------"
echo -e "${YELLOW}by msflinux"
echo -e "${YELLOW}2022.2.17"
echo -e "${RED}[!]Do not use it for illegal or criminal purposes!!"
echo -e "${RED}[!]The author assumes no legal responsibility!"

read -r -p "[?]Do you agree?(y/n) " input

if [ $input = n ];then
	 echo -e "${RED}[!]You can't use this tool!!!"
		exit 1
		exit 1
		exit 1
	else
		echo -e "${GREEN}[√]Checking your devices..."
fi

clear

echo -e "${RED}  W             W SSSSSSSSS LLDDDDDDSS DDDDDDDDD"
echo -e "${RED}  W       W     W SS        LL      SD    DD    "
echo -e "${RED}  W     W W     W SS        LLDDDDDD      SS    "
echo -e "${RED}   W   W   W    W  SSSSSSSS LL            DD    "
echo -e "${RED}    WWW     WWWW         SS LL            SS    "
echo -e "${RED}     W       W   SSSSSSSSSS DD            DD    "
##########################
echo -e "${GREEN}[*]MENU"
echo -e "\n\e[33m[*]Please select a option\n
[!]Because it is a beta version,so the function is limited\n
	1)Scaning IP
	2)Connecting host
	3)Scaning report
	4)Ping 
	5)Exit"
read -r -p "[*]Please select a option:" input
case $input in
	1) echo -e "${GREEN}[√]Enter IP"
		read ip
		nmap -sP $ip/24 | grep scan | cut -d " " -f 5 | head -n -1 ;;
	2) echo -e "${GREEN}[√]Enter host"
		read host
		ncat -lvnp $host ;;
	3) echo -e "${GREEN}[√]Enter IP"
		read ip
		nmap $ip ;;
	4) echo -e "${GREEN}[√]Enter IP or url"
		read ip | url
		ping $ip | $url ;;
	5) echo -e "${YELLOW}[*]Thanks for your using!"
		exit 1
		exit 1
		exit 1 ;;
	*) echo -e "${RED}[!]Invalid selection!!!"
esac
