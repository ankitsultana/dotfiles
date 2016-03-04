export ZSH=/Users/ankitsultana/.oh-my-zsh
ONLINE='%{%F{green}%}◉'
OFFLINE='%{%F{red}%}⦿'

# Load colors
autoload -U colors && colors
function prompt_online() {  # Check Network Connection
  if [[ -f ~/.offline ]]; then
    echo $OFFLINE
  else
    echo $ONLINE
  fi
}

function battery() {        # Check battery status
	python ~/.utilities/mybattery.py
}

setopt promptsubst
bat=$(battery)
DUMMY='%{%F{green}%}'	# Set foreground color
RPS1='$(battery) $(prompt_online) $DUMMY'

RUBY_BUILD_CACHE_PATH="/Users/ankitsultana/.rbenv/cache"

export EDITOR=vim
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export PATH=$PATH:/Library/TeX/Distributions/.DefaultTeX/Contents/Programs/texbin
export PYTHONPATH=$PYTHONPATH:/System/Library/Frameworks/Python.framework/Versions/2.7/Extras/lib/python/PyObjC

if [ "$TERM_PROGRAM" = "Apple_Terminal" ]; then
	ZSH_THEME="ankitsultana"
else
	ZSH_THEME="ankitsultana"
fi

#========== Awesome stuff below ===========#

alias g++='clang++ -std=c++11'
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

# Self Explanatory
alias whichgitbranch="git symbolic-ref HEAD 2>/dev/null | cut -d"/" -f 3"
echo 'whichgitbranch'

# A touch of Naruto
almightypush() {
	local curr_branch="$(whichgitbranch)"
	git push origin $curr_branch
	echo $curr_branch
}
echo 'almightypush'

submit() {
	cat $1 |pbcopy
}
echo 'submit'

templar() {
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
echo 'templar'


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

alias gotoprogramming='cd ~/Desktop/Desk/CS/Programming'
echo 'gotoprogramming'

alias gotospoj='cd ~/Desktop/Desk/CS/Programming/Sport/C++/spoj/'
echo 'gotospoj'

alias gotoimpl='gotospoj; cd ../Implementations'
echo 'gotoimpl'

plugins=(git)
DEFAULT_USER=`whoami`
#plugins=(rails sublime web-search chucknorris github rand-quote git ruby)

# Set path for tex, python 2, python 3
export PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/texbin:/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"

alias gotochef=/Users/ankitsultana/Desktop/Desk/CS/Programming/Sport/C++/codechef
alias gotoforces=/Users/ankitsultana/Desktop/Desk/CS/Programming/Sport/C++/CODEFORCES
export PATH="$HOME/.rbenv/bin:$PATH"

source $ZSH/oh-my-zsh.sh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
