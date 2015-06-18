export PS1="\e[0;31msolarized \e[m \e[1;32m\W\e[m \e[1;36m»»\e[m "
export PS2="	»»» "

#a convenient function to avoid adding boilerplate code 
# template.cc contains boilerplate which I use for Competitive Programming
dress() {
	cp ~/.template.cc $1
	vim $1
}
echo 'dress'

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
