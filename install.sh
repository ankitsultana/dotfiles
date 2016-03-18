git submodule init
for i in $(git submodule | sed -e 's/.* //'); do
    spath=$(git config -f .gitmodules --get submodule.$i.path)
    surl=$(git config -f .gitmodules --get submodule.$i.url)
	if [ $(echo $spath | grep -c "subtitle") -ne 0 ]; then
		git submodule update --init -- $spath --depth 1
	else
		git submodule update --init -- $spath
	fi
done
