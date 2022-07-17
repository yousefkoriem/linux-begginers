clear
printf "\033[93mCreated by \033[1;94mBlueFox\033[0m\n"
sleep 3
clear
printf "Hello there\n"
sleep 2
printf "\n"
printf "\n"
printf "Want to start? \033[95m(Y/n): \033[0m"
read a

if [ $a == 'n' ]
then
printf "Goodbye\n"
sleep 5
clear

else
printf "alias update='bash /home/$USER/.alias/update.sh'\n" > .bash_aliases
printf "alias fix='bash /home/$USER/.alias/fix.sh'\n" >> .bash_aliases
mv .bash_aliases ~/
mv .alias/ ~/
clear
printf "You can run update and upgrade by typing <update>\n"
sleep 1
printf "\n"
printf "Want to try? \033[93m\"type update\" \033[0m"
read b
if [ $b == 'update' ]
then
bash ~/.alias/update.sh
else
echo
fi
clear
printf "Ok, next thing\n"
sleep 2
clear
printf "Next thing\n"
printf "You can run fix if you have problem in packages by typing <fix>\n"
sleep 1
printf "\n"
printf "Want to try? \033[93m\"type fix\" \033[0m"
read b
if [ $b == 'fix' ]
then
bash ~/.alias/fix.sh
else
echo
fi
clear
fi
printf "Ok, let's see the real questions"
sleep 3
clear
printf "That's all\n"
sleep 3
printf "\033[92mClose your terminal to apply changes \033[0m"
sleep 5
clear
printf "\033[92mGood bye, See you soon \033[0m\n"
sleep 4
exit 0
