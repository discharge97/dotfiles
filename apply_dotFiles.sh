echo "Copying .bashrc"
cp -u .bashrc ~/

echo "Copying .bash_aliases"
cp -u .bash_aliases ~/

echo "Copying .config file"
cp -u -r .config ~/

echo "Soursing bashrc"
source ~/.bashrc

echo "Done!"
