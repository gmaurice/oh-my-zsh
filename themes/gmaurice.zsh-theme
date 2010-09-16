PROMPT='%{$fg_bold[white]%}%D{%H%M} %(!.%{$bg_bold[red]%}.)%{$fg_bold[green]%}%m%{$reset_color%} %{$fg[cyan]%}%~ %{$reset_color%}
$?> '

RPROMPT='%{$fg_bold[blue]%}$(git_prompt_info)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="git:%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%} %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%}"
