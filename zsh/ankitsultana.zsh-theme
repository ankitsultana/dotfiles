ONLINE='%{%F{green}%}◉'
OFFLINE='%{%F{red}%}⦿'
function prompt_online() {  # Check Network Connection
  if [[ -f ~/.offline ]]; then
    echo $OFFLINE
  else
    echo $ONLINE
  fi
}

local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

PROMPT='
%{$fg[red]%}%n%{$reset_color%} at %{$fg[yellow]%}%m%{$reset_color%} in %{$fg_bold[green]%}$(collapse_pwd)%{$reset_color%}$(hg_prompt_info)$(git_prompt_info)
$(virtualenv_info)$(prompt_char) '

PROMPT='%{$fg[red]%}┌ %{$fg[blue]%}%~%{$reset_color%} ${return_code}
'

PROMPT+='%{$fg[red]%}└ $(prompt_online)$(git_prompt_info)'
PROMPT+='%{$fg[red]%}%(!.#.»)%{$reset_color%} '

PROMPT2='%{$fg[red]%}\ %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}:: %{$fg[yellow]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}*%{$fg[yellow]%}"

