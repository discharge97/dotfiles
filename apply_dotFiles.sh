echo -e "
 ____  _         _
|    \|_|___ ___| |_ ___ ___ ___ ___
|  |  | |_ -|  _|   | .'|  _| . | -_|
|____/|_|___|___|_|_|__,|_| |_  |___|
                            |___|    "
echo "#Personal dotfiles"
printf "\n\n============ Updating dot files ============\n\n"
cp -v -u .Xresources ~/
cp -v -u .bashrc ~/
cp -v -u .aliases ~/
cp -v -u -r .config ~/
cp -v -u -r bin ~/ && find ~/bin -type f -exec chmod u+x {} \;

printf "\n\n#Sourcing bashrc: "
source ~/.bashrc
printf "Done!\n\n"
