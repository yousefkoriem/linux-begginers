clear
printf "\033[93mCreated by \033[1;94mBlueFox\033[0m\n\n\n"
sleep 3

printf "Hello there\n\n\n"

printf "Want to start? \033[95m(Y/n): \033[0m"
read a

if [[ -z "$a" || "$a" == "Y" || "$a" == "y" ]]
then
	echo "Welcome with this configurations"
	sleep 2
else
	echo "Goodbye"
	exit
fi
clear

printf "We will start with shorthands\n\n"
sleep 1

printf "Do you want to update system by typing \"\033[1;0mUpdate\033[0m\"(Y/n): "
read a

if [[ -z "$a" || "$a" == "Y" || "$a" == "y" ]]
then
	touch ~/.bash_aliases
	printf "alias update='sudo apt update && sudo apt upgrade -y'" >> ~/.bash_aliases 
else
	printf "Ok we will skip it\n"
fi

