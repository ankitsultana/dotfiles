export LANG=en_US.UTF-8
VIRTUAL_ENV_DISABLE_PROMPT=1
ONLINE='%{%F{green}%}◉'
OFFLINE='%{%F{red}%}×'

function prompt_online() {  # Check Network Connection
  if [[ -f ~/.offline ]]; then
    echo $OFFLINE
  else
    echo $ONLINE
  fi
}

function virtualenv_info {
  [ $VIRTUAL_ENV ] && echo '('`basename $VIRTUAL_ENV`') '
}

function charge_value {
  echo $(pmset -g batt | egrep -o '[0-9]+\%')
}

local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

# Multi line PROMPT Begins, following is its first line
PROMPT='%{$fg[red]%}┌ %{$fg[red]%}$(virtualenv_info) %{$fg[blue]%}%~%{$reset_color%} ${return_code}
'
# Second line
PROMPT+='%{$fg[red]%}└ $(git_prompt_info | sed "s/://g")'
PROMPT+='%{$fg[magenta]%}%(!.#.❯)%{$reset_color%} '

function set_zsh_rprompt {
  if [ $(pmset -g batt | grep -c 'AC Power') -ne 0 ]; then
    RPROMPT+='%{$fg[green]%}⚡'
  else
    RPROMPT+='%{$fg[red]%}×'
  fi
  if [ $(pmset -g batt | grep -c '[0-2][0-9]\%') -ne 0 ]
  then
    RPROMPT+=' %{$fg[red]%}$(charge_value)#'
  elif [ $(pmset -g batt | grep -c '[3-6][0-9]\%') -ne 0 ]
  then
    RPROMPT+=' %{$fg[yellow]%}$(charge_value)#'
  else
    RPROMPT+=' %{$fg[green]%}$(charge_value)#'
  fi
  RPROMPT+='%{$reset_color%}'
}

ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}:: %{$fg[yellow]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}*%{$fg[yellow]%}"

# set_zsh_prompt is too slow, hence using Python !
function precmd {
  #set_zsh_rprompt
  # RPROMPT='%{$fg[yellow]%}$(osascript ~/.utilities/applescripts/itunes.scpt) %{$fg[blue]%}| '
  RPROMPT=''
  # if [ $(uname -s) = "Darwin" ]; then
  # RPROMPT+=$(python ~/.utilities/mybattery.py)
  # fi
}
