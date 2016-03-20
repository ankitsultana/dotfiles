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
echo "======================"
chmod +x vim/install.h
vim/install.sh

echo "Installing zsh plugins"
echo "======================"
chmod +x zsh/install.h
zsh/install.h
