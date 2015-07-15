# Path to your oh-my-zsh installation.
export ZSH=/Users/ankitsultana/.oh-my-zsh
#export PS1="\e[0;31magnoster \e[m \e[1;32m\W\e[m \e[1;36m»»\e[m "
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.

#========== Awesome stuff below ===========#

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

ZSH_THEME="agnoster"

#Danger starts here
#setopt PROMPT_SUBST
#PROMPT='%{$(pwd|grep --color=always /)%${#PWD}G%} %(!.%F{red}.%F{cyan})%n%f@%F{yellow}%m%f%(!.%F{red}.)%#%f '

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

plugins=(git)
DEFAULT_USER=`whoami`
#plugins=(rails sublime web-search chucknorris github rand-quote git ruby)

# User configuration

export PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/texbin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#Danger
#echo "plugins=(rails sublime web-search chucknorris github rand-quote git ruby)" >> ~/.zshrc

