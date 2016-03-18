echo "Cloning zsh plugins"
filename="plugins.txt"
while read in; do
	git clone $in
	echo "\n======================================================\n"
done < $filename
