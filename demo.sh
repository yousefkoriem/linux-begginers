clear
printf "\033[93mCreated by \033[1;94mYousef Koriem\033[0m\n\n\n"
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
	printf "Now you can just type \033[1;0mUpdate\033[0m To update your apps\n"
	sleep 2
else
	printf "Ok we will skip it\n"
	sleep 2
fi

clear

printf "Downloading C/C++ Packages. . .\n"
sudo apt update
sudo apt install build-essential

printf "Downloading Visual Studio Code. . .\n"
wget https://vscode.download.prss.microsoft.com/dbazure/download/stable/ea1445cc7016315d0f5728f8e8b12a45dc0a7286/code_1.91.0-1719861592_amd64.deb
sudo apt update
sudo dpkg -i code_1.91.0-1719861592_amd64.deb
sudo apt update
sudo dpkg --configure -a
sudo apt --fix-broken install
rm -rf code_1.91.0-1719861592_amd64.deb

printf "\n\n\nDownloading Brave. . .\n"
sudo apt update
sudo apt install curl
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser

