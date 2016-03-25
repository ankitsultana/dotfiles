echo "Initializing submodules"
echo "======================="

git submodule init
for i in $(git submodule | sed -e 's/.* //'); do
    spath=$(git config -f .gitmodules --get submodule.$i.path)
    surl=$(git config -f .gitmodules --get submodule.$i.url)
	if [ $(echo $spath | grep -c "subtitle") -ne 0 ]; then
		git submodule update --depth 1 -- $spath
	else
		git submodule update --init -- $spath
	fi
done

echo "Installing oh-my-zsh"
echo "===================="
curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh
mv oh-my-zsh ~/.oh-my-zsh

echo "Installing zsh theme"
echo "===================="
mv zsh/ankitsultana.zsh-theme ~/.oh-my-zsh/themes/

echo "Installing vim plugins"
echo "======================\n\n"
cd vim
echo "Installing Pathogen in vim/autoload"
if [ ! -d autoload ]; then
    mkdir autoload
    echo "Created vim/autoload"
fi
curl -LSso autoload/pathogen.vim https://tpo.pe/pathogen.vim
echo "Done!\n\n"
echo "Cloning vim plugins"
filename="plugins.txt"
while read in; do
	git clone $in
	echo "\n======================================================\n"
done < $filename

if [ -d ~/.vim ]; then
    mv ~/.vim ~/.vim.bak
    echo "WARN: ~/.vim already exists, backing it up"
    echo "Renamed ~/.vim to ~/.vim.bak"
fi
cp -r vim ~/.vim
if [ -d ~/.vimrc ]; then
    mv ~/.vimrc ~/.vimrc.bak
    echo "WARN: ~/.vimrc already exists, backing it up"
    echo "Renamed ~/.vimrc to ~/.vimrc.bak"
fi
mv ~/.vim/vimrc ~/.vimrc

echo "Installing zsh plugins"
echo "======================\n\n"
cd ../zsh
echo "Cloning zsh plugins"
filename="plugins.txt"
while read in; do
	git clone $in
	echo "\n======================================================\n"
done < $filename

cd ..

echo "Installing utilities"
echo "===================="
if [ -d ~/.utilities ]; then
    mv ~/.utilities ~/.utilities.bak
    echo "WARN: ~/.utilities already exists, backing it up"
    echo "Renamed ~/.utilities to ~/.utilities.bak"
fi
cp -r utilities ~/.utilities

echo "Installing Subtitle Downloader"
echo "=============================="
cp -r "utilities/subtitle-downloader/Get Subtitles.workflow" "~/Library/Services"

echo "Installing fzf"
echo "=============="
if [ -d ~/.fzf]; then
    echo "fzf already exists!"
else
    cp -r iterm/fzf ~/.fzf
fi
