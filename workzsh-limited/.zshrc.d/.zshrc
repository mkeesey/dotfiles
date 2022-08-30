zstyle ':vcs_info:*' actionformats "%r/%S %b %m%u%c "
autoload -Uz vcs_info
precmd() { vcs_info }
setopt prompt_subst
PS1='%3~ ${vcs_info_msg_0_}%# '
