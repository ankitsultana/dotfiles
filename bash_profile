export PS1="\e[0;31msolarized\e[m\e[1;29m\$(parse_git_branch)\e[m \e[1;32m\W\e[m \e[1;36m»»\e[m "
export PS2="	»»» "

#Git stuff
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

#Danger
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

#export PIP_REQUIRE_VIRTUALENV=true

submit() {
	cat $1 |pbcopy
}
echo 'submit'

# a convenient function to avoid adding boilerplate code 
# template.cc contains boilerplate which I use for Competitive Programming

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

#A touch of Naruto
alias almighty_push='git push origin master'
echo 'almighty_push'

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
