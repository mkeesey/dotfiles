export GOPATH=/Users/mike.keesey/work/gopath
export PATH="$PATH:/Users/mike.keesey/work/gopath/bin"
export PATH="/usr/local/opt/elasticsearch@2.3/bin:$PATH"
export PATH="$PATH:/Users/mike.keesey/bin"

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion
source "$(brew --prefix)/etc/bash_completion"

export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export PS1='\u MacOS \W$(__git_ps1) \$ '

alias cdlr="cd ${GOPATH}/src/github.com/logrhythm/"
alias docker_build_af="/Users/mike.keesey/work/gopath/src/github.com/logrhythm/alfred/scripts/uv/run_build.sh"
alias docker_package_af="/Users/mike.keesey/work/gopath/src/github.com/logrhythm/alfred/scripts/uv/run_package.sh"
