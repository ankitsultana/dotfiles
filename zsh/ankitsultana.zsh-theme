export LANG=en_US.UTF-8
VIRTUAL_ENV_DISABLE_PROMPT=1

function virtualenv_info {
  [ $VIRTUAL_ENV ] && echo '('`basename $VIRTUAL_ENV`') '
}

local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

# Multi line PROMPT Begins, following is its first line
PROMPT='%{$fg[red]%}┌ %{$fg[red]%}$(virtualenv_info) %{$fg[blue]%}%~%{$reset_color%} ${return_code}
'
# Second line
PROMPT+='%{$fg[red]%}└ $(git_prompt_info | sed "s/://g")'
PROMPT+='%{$fg[green]%}%(!.#.❯)%{$fg[yellow]%}%(!.#.❯)%{$fg[red]%}%(!.#.❯)%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}:: %{$fg[yellow]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}*%{$fg[yellow]%}"
