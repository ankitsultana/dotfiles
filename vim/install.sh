echo "Installing Pathogen in ./autoload"
mkdir autoload
curl -LSso ./autoload/pathogen.vim https://tpo.pe/pathogen.vim
echo "Done!\n\n"
echo "Cloning vim plugins"
filename="plugins.txt"
while read in; do
	git clone $in
	echo "\n======================================================\n"
done < $filename
