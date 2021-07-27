#!bin/bash
#The Code goes here
#Follow me on Facebook
RED="$(printf '\033[31m')"  GREEN="$(printf '\033[32m')"  ORANGE="$(printf '\033[33m')"  BLUE="$(printf '\033[34m')"
MAGENTA="$(printf '\033[35m')"  CYAN="$(printf '\033[36m')"  WHITE="$(printf '\033[37m')" BLACK="$(printf '\033[30m')"
REDBG="$(printf '\033[41m')"  GREENBG="$(printf '\033[42m')"  ORANGEBG="$(printf '\033[43m')"  BLUEBG="$(printf '\033[44m')"
MAGENTABG="$(printf '\033[45m')"  CYANBG="$(printf '\033[46m')"  WHITEBG="$(printf '\033[47m')" BLACKBG="$(printf '\033[40m')"
clear


echo -e "${RED}"
figlet ERROR SOLVER
echo "${WHITE}"
echo "1.apt Secure key (8) error(Termux)"
echo
echo "2.apt Secure key (8) error(Kali Linux)"
echo
echo "3.dpkg error(Termux)"
echo
echo "4.Wrong List Url Error(Termux)(Print only)"
echo
echo "5.Find me On facebook"
echo
read -p "Choose your error! : " g
#The Code was start working here
if [[ $g == 1 ]];then
cd ..
cd usr
cd etc
cd apt
cd sources.list.d
rm -rf game.list && rm -rf science.list
apt update && apt upgrade
figlet DONE


elif [[ $g == 2 ]];then
wget -q -O - https://archive.kali.org/archive-key.asc  | apt-key add
apt update && apt upgrade
figlet DONE

elif [[ $g == 3 ]] ;then
clear
pkg uninstall openssl-tool -y
pkg upgrade
pkg install openssl-tool -y
pkg install python -y
figlet DONE

elif [[ $g == 4 ]];then
echo "type termux-change-repo"
echo "Press on Science Repo "
echo "Press On Mirror hosted by Grimler.se"
figlet DONE

elif [[ $g == 5 ]];then
termux-open-url https://facebook.com/MinMaySaPatMoLoLinkKoCopyTarLr
figlet Thanks for Finding me!

fi
