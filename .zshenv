export PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"

export GOROOT=/usr/local/opt/go/libexec
export GOPATH=$HOME/dev/gopath
export PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:$PATH:$GOPATH/bin:$GOROOT/bin

export SWIFTENV_ROOT="$HOME/.swiftenv"
export PATH="$SWIFTENV_ROOT/bin:$PATH"
eval "$(swiftenv init -)"

[ -f "$HOME/.env"       ] && source $HOME/.env
[ -f "$HOME/.env_local" ] && source $HOME/.env_local
[ -f "$HOME/.aliases"   ] && source $HOME/.aliases
