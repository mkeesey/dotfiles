# Autocomplete
autoload -Uz compinit
compinit

# Prompts
#autoload -Uz promptinit
#promptinit
#prompt redhat
zstyle ':vcs_info:*' actionformats "%r/%S %b %m%u%c "
autoload -Uz vcs_info
precmd() { vcs_info }
setopt prompt_subst
PS1='%3~ ${vcs_info_msg_0_}%# '

HISTSIZE=5000               #How many lines of history to keep in memory
HISTFILE=~/.zsh_history     #Where to save history to disk
SAVEHIST=5000               #Number of history entries to save to disk
setopt appendhistory        #Append history to the history file (no overwriting)
setopt sharehistory         #Share history across terminals
setopt incappendhistory     #Immediately append to the history file, not just when a term is killed

# ssh-agent
if ! pgrep -u "$USER" ssh-agent > /dev/null; then
	ssh-agent > ~/.ssh-agent-thing
fi
if [[ "$SSH_AGENT_PID" == "" ]]; then
	eval "$(<~/.ssh-agent-thing)" > /dev/null
fi

EDITOR="vim"
VISUAL="vim"
GIT_EDITOR="vim"

export PATH=${PATH}:/home/mkeesey/bin
export PATH=${PATH}:/home/mkeesey/go/bin
export PATH=${PATH}:/home/mkeesey/.gem/ruby/2.7.0/bin

export LC_ALL=en_US.UTF-8
export LANG=en_us.UTF-8

if [[ "$(uname)" == "Linux" ]]; then
	alias pbcopy='xsel --clipboard --input'
	alias pbpaste='xsel --clipboard --output'
fi

alias act='source venv/bin/activate'
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
eval "$(pyenv virtualenv-init -)"
