export PS1="$ "
export GOPATH=~/go
export PATH=$GOPATH/bin:$PATH
export WORK=$GOPATH/src/github.com
set -o vi

source ~/.aliases

if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi

export NVM_DIR=~/.nvm
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
