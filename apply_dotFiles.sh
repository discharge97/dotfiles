echo "Copying .bashrc"
cp .bashrc ~/

echo "Copying .bash_aliases"
cp .bash_aliases ~/

echo "Copying .config file"
cp -r .config ~/

echo "Soursing bashrc"
source ~/.bashrc

echo "Done!"
