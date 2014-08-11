collapsed_wd() {
  echo $(pwd | perl -pe "
   BEGIN {
      binmode STDIN,  ':encoding(UTF-8)';
      binmode STDOUT, ':encoding(UTF-8)';
   }; s|^$HOME|~|g; s|/([^/])[^/]*(?=/[^/]*/)|/\$1|g
")
}


function prompt_char {
    git branch >/dev/null 2>/dev/null && echo '±' && return
    hg root >/dev/null 2>/dev/null && echo '☿' && return
    echo '$'
}

function hg_prompt_info {
	hg prompt --angle-brackets "%{$fg[magenta]%}<branch>%{$reset_color%}|(%{$fg[green]%}<patch>%{$fg[reset_color]%}|%{$fg[yellow]%}<patch|applied>:<patch|count>%{$reset_color%})" 2>/dev/null
}

PROMPT='%{$fg[magenta]%}%n%{$reset_color%}@%{$fg[yellow]%}%m%{$reset_color%} %{$fg_bold[green]%}$(collapsed_wd)%{$reset_color%} $(prompt_char) '

RPROMPT='$(hg_prompt_info)$(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[green]%}!"
ZSH_THEME_GIT_PROMPT_CLEAN=""
