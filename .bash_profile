export PS1="$ "
export PATH=/usr/local/bin:$PATH
export PATH=/Applications/Postgres.app/Contents/Versions/9.4/bin:$PATH
export PATH=/usr/local/git/bin:$PATH
export PATH=/usr/local/go/bin:$PATH
export PATH=~/dev/tools/bin:$PATH
export GOROOT=/usr/local/go
export GOPATH=~/dev/code/go
export DOCKER_HOST=tcp://
export PATH=$GOPATH/bin:$PATH
export WORK=$GOPATH/src/github.com
set -o vi

source ~/.profile
source ~/.aliases

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
