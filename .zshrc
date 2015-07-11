ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
DISABLE_AUTO_UPDATE="true"
DISABLE_CORRECTION="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="yyyy/mm/dd"
plugins=(git)

[ -d "$ZSH"             ] && source $ZSH/oh-my-zsh.sh
[ -f "$HOME/.env"       ] && source ~/.env
[ -f "$HOME/.env_local" ] && source ~/.env_local
[ -f "$HOME/.aliases"   ] && source ~/.aliases
