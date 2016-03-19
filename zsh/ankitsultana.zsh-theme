VIRTUAL_ENV_DISABLE_PROMPT=1
ONLINE='%{%F{green}%}◉'
OFFLINE='%{%F{red}%}⦿'
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

local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

PROMPT='%{$fg[red]%}┌ %{$fg[red]%}$(virtualenv_info) %{$fg[blue]%}%~%{$reset_color%} ${return_code}
'

PROMPT+='%{$fg[red]%}└ $(prompt_online)$(git_prompt_info)'
PROMPT+='%{$fg[red]%}%(!.#.»)%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}:: %{$fg[yellow]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}*%{$fg[yellow]%}"
