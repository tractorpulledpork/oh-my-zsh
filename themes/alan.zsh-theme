source "$ZSH/lib/spectrum.zsh"

# There is some way to do this just using zsh substitutions but I sure can't figure it out
local path_display='echo "${PWD/#$HOME/~}" | sed "s:/:%{$FG[092]%}/%{$fg[cyan]%}:g"'

local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ %s)"

PROMPT='${ret_status}%{$fg_bold[green]%}%p %{$fg[cyan]%}$(eval $path_display) %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
