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
# cp -r .bash_aliases ~/
cp -r .alias/ ~/
clear
printf "You can run update and upgrade by typing <update>\n"
sleep 1
printf "Want to try? \033[93m\"type update\" "
read b
if [ $b == 'update' ]
then
update
fi
fi