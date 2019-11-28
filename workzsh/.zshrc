# Autocomplete
autoload -Uz compinit
compinit

# Prompts
#autoload -Uz promptinit
zstyle ':vcs_info:*' actionformats "%r/%S %b %m%u%c "
autoload -Uz vcs_info
#promptinit
#prompt redhat
precmd() { vcs_info }
setopt prompt_subst
PS1='%3~ ${vcs_info_msg_0_}%# '

HISTSIZE=5000               #How many lines of history to keep in memory
HISTFILE=~/.zsh_history     #Where to save history to disk
SAVEHIST=5000               #Number of history entries to save to disk
setopt appendhistory        #Append history to the history file (no overwriting)
setopt sharehistory         #Share history across terminals
setopt incappendhistory     #Immediately append to the history file, not just when a term is killed

EDITOR="vim"
VISUAL="vim"

export GOPATH=/Users/mike.keesey/work/gopath
export PATH=${PATH}:${GOPATH}/bin
export PATH="/usr/local/opt/elasticsearch@2.3/bin:${PATH}"
export PATH="${PATH}:${HOME}/bin"
