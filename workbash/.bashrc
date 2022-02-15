export GOPATH=/Users/mike.keesey/work/gopath
export PATH="$PATH:/Users/mike.keesey/work/gopath/bin"
export PATH="/usr/local/opt/elasticsearch@2.4/bin:$PATH"
export PATH="/usr/local/opt/openssl/bin:$PATH"
export PATH="$PATH:/Users/mike.keesey/bin"

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion
source "$(brew --prefix)/etc/bash_completion"

export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export PS1='\u MacOS \W$(__git_ps1) \$ '

alias cdlr="cd ${GOPATH}/src/github.com/logrhythm/"
alias docker_build_af="/Users/mike.keesey/work/gopath/src/github.com/logrhythm/alfred/scripts/uv/run_build.sh"
alias docker_package_af="/Users/mike.keesey/work/gopath/src/github.com/logrhythm/alfred/scripts/uv/run_package.sh"

export GPG_TTY=$(tty)

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Web Console stuff
export CONSUL_JOIN='10.4.2.12' #certifybug
export CONSUL_NODE_NAME="$(hostname)"
export CONSUL_BIND="$(ifconfig en0 | sed -En 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p')"
export CONSUL_CLIENT='true'
export WEB_CONSOLE_ID='582784d2-1d91-4089-ba05-ad10c5267e83' #certifybug
export CONSUL_CONF_FILE="${GOPATH}/src/github.com/logrhythm/service-registry/secureConfig.json"
export COMPUTERNAME="$(whoami)-machine"
export FQDN="$(whoami)-machine"

export JAVA_HOME=`/usr/libexec/java_home -v 11`
export JAVA_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-11.jdk/Contents/Home
export PATH=/Library/Java/JavaVirtualMachines/adoptopenjdk-11.jdk/Contents/Home:$PATH
