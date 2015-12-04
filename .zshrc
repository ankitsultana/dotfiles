export ZSH=/Users/ankitsultana/.oh-my-zsh

if [ "$TERM_PROGRAM" = "Apple_Terminal" ]; then
	ZSH_THEME="robbyrussell"
	echo "$TERM_PROGRAM"
else
	ZSH_THEME="robbyrussell"
fi

autoload -U colors && colors
RPROMPT="%F{cyan} robbyrussell %f%F{red} %W %f"

#========== Awesome stuff below ===========#

# Note: Not consistent with run_tests()
# For compiling a cc/cpp file 
# and naming its output file with the same 
# name as the original file
compile_cpp() {
	local output_name=`expr "$1" : '^\([0-9A-Za-z]*\)'`
	echo "Compiling file: $1"
	clang++ -std=c++11 $1 -o "_$output_name"
	echo "Compiled to   : _$output_name"
}

# When programming for say a codeforces contest
# Store the input files as 1 2 3 (without extension)
# Then compile the source code.. and run it by typing
# <run_tests 3> #if you want to run the code for 3 input files
run_tests() {
	local i=1
	while [ $i != $1 ]; do
		./a.out < $i
		i=$((i+1))
	done
	./a.out < $i
}

# Change iTerm2 color scheme from Solarized Dark to Solarized Light

alias Dark="echo -e \"\033]50;SetProfile=SolDark\a\""
alias Light="echo -e \"\033]50;SetProfile=SolLight\a\""

# Self Explanatory
alias whichgitbranch="git symbolic-ref HEAD 2>/dev/null | cut -d"/" -f 3"
echo 'whichgitbranch'

# A touch of Naruto
almightypush() {
	local curr_branch="$(whichgitbranch)"
	git push origin $curr_branch
	echo $curr_branch
}

gitupdate() {
	git add $1
	git commit -m "Update"
	if [ ! -z "$2" ]; then
		git push origin $2
	else
		git push origin master
	fi
}
echo "gitupdate"

updvim() {
	local curr_path="$(pwd)"
	cp ~/.vimrc ~/GitHub/Dotfiles/vimrc
	cd ~/GitHub/Dotfiles/
	git add vimrc
	git commit -m "Automated Update"
	git push origin master
	cd $curr_path
}
echo "updvim"

updsh() {
	local curr_path="$(pwd)"
	cp ~/.bash_profile ~/GitHub/Dotfiles/bash_profile
	cd ~/GitHub/Dotfiles/
	git add bash_profile
	git commit -m "Automated Update"
	git push origin master
	cd $curr_path
}
echo "updsh"

updzsh() {
	local curr_path="${pwd}"
	cp ~/.zshrc ~/GitHub/Dotfiles/zshrc
	cd ~/GitHub/Dotfiles
	git add zshrc
	git commit -m "Automated Update"
	git push origin master
	cd $curr_path
}
echo "updzsh"

submit() {
	cat $1 |pbcopy
}
echo 'submit'

dress() {
	if [ -e $1 ] 
	then
		echo "File Already exists!!"
		read T
		vim $1
	else	
		cp ~/.template.cc $1
		vim $1
	fi
}
echo 'dress'


shortdress() {
	if [ -e $1 ] 
	then
		echo "File Already exists!!"
		read T
		vim $1
	else	
		cp ~/.template2.cc $1
		vim $1
	fi
}
echo 'shortdress'


tmate() {
  open $1 -a "TextMate"
}
echo 'tmate'

subl() {
	open $1 -a "Sublime Text"
}
echo 'subl'

alias gotosentdex='gotoprogramming ; cd ./Python/sentdex'
echo 'gotosentdex'

alias gotoruby='gotospoj ; cd ../../Ruby/Spoj/'
echo 'gotoruby'

alias gotoprogramming='cd ~/Desktop/Desk/CS/Programming'
echo 'gotoprogramming'

alias py='python3'
echo 'py -> python3'

alias gotospoj='cd ~/Desktop/Desk/CS/Programming/Sport/C++/spoj/'
echo 'gotospoj'

alias gotoimpl='gotospoj; cd ../Implementations'
echo 'gotoimpl'

#And again
alias universal_pull='git pull'
echo 'universal_pull'

alias hidefiles='defaults write com.apple.finder AppleShowAllFiles NO'
echo 'hidefiles'

alias showfiles='defaults write com.apple.finder AppleShowAllFiles YES'
echo 'showfiles'

# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

plugins=(git)
DEFAULT_USER=`whoami`
#plugins=(rails sublime web-search chucknorris github rand-quote git ruby)

# User configuration

export PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/texbin:/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh
alias gotochef=/Users/ankitsultana/Desktop/Desk/CS/Programming/Sport/C++/codechef
alias gotoforces=/Users/ankitsultana/Desktop/Desk/CS/Programming/Sport/C++/CODEFORCES
