# Make backups
echo "Making Backups"

mv ~/.vim ~/.vim_bak
mv ~/.vimrc ~/.vimrc_bak
mv ~/.zshrc ~/.zshrc_bak

# Make new diretory

echo "Making new directories"
mv ~/.vim
mv ~/.vim/bundle
mv ~/.vim/autoload

# Move from dotfiles

echo "Moving cool stuff"
mv .vimrc ~/.vimrc
mv .zshrc ~/.zshrc
mv .utilities ~/.utilities

# Install oh-my-zsh

curr_path="$(pwd)"
cd ~
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
cd $curr_path

# Clone everything to bundle from 

echo "Cloning vim plugins"
filename="vim_plugins.txt"
while read in; do
	git clone $in ~/.vim/bundle/
done < $filename

echo "SUCESS! Make sure you have zsh installed as well"
