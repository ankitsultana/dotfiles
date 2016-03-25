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

echo "Installing vim plugins"
echo "======================\n\n"
cd vim
echo "Installing Pathogen in vim/autoload"
mkdir autoload
curl -LSso autoload/pathogen.vim https://tpo.pe/pathogen.vim
echo "Done!\n\n"
echo "Cloning vim plugins"
filename="plugins.txt"
while read in; do
	git clone $in
	echo "\n======================================================\n"
done < $filename

echo "Installing zsh plugins"
echo "======================\n\n"
cd ../zsh
echo "Cloning zsh plugins"
filename="plugins.txt"
while read in; do
	git clone $in
	echo "\n======================================================\n"
done < $filename
