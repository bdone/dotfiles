PROMPT='%{$fg_bold[green]%}%p %{$fg[cyan]%}%c%{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}$%b '

if [ -e ~/.rvm/bin/rvm-prompt ]; then
  RPROMPT='%{$reset_color%} %{$fg[white]%}$(~/.rvm/bin/rvm-prompt i v g) %{$reset_color%}'
else
  if which rbenv &> /dev/null; then
    RPROMPT='%{$reset_color%} %{$fg[white]%}$(rbenv version | sed -e "s/ (set.*$//") %{$reset_color%}'
  fi
fi

ZSH_THEME_GIT_PROMPT_PREFIX=" (%{$fg[blue]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
