export CC=/usr/bin/gcc-4.2
export PATH=~/bin:$HOME/.rvm/bin:/usr/local/bin:$PATH

source ~/.rvm/scripts/rvm
__rvm_project_rvmrc

ZSH=$HOME/.oh-my-zsh
ZSH_THEME="k-m"
DISABLE_AUTO_UPDATE="true"
plugins=(git rvm osx)
source $ZSH/oh-my-zsh.sh

alias rezsh="vim ~/.zshrc && source ~/.zshrc"

alias m+='nohup memcached -vv > log/memcached.log &'
alias m-='killall memcached'

alias r+='nohup redis-server > log/redis.log &'
alias r-='killall redis-server'

alias ll='ls -l'
alias la='ls -al'

alias ss='bundle exec script/server'
alias sc='bundle exec script/console'
alias sd='bundle exec script/dbconsole'
alias sg='bundle exec script/generate'

alias rt='ruby -Itest'

alias gs='g status'
alias gd='g diff --color'
alias gdc='gd --cached'
alias ga='g add'
alias gc='g commit'
alias gco='g checkout'
alias gp='g pull --rebase'
alias gpp='gp && git push'
alias gre='g rebase'
alias grem='gre master'
alias grm='g rm'

# secret aliases
[[ -s $HOME/.work_profile ]] && source $HOME/.work_profile
