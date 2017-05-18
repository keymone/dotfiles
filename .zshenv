export GOROOT=/usr/local/opt/go/libexec
export GOPATH=$HOME/dev/gopath
export PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:$PATH:$GOPATH/bin:$GOROOT/bin

[ -f "$HOME/.env_local" ] && source $HOME/.env_local
[ -f "$HOME/.aliases"   ] && source $HOME/.aliases
