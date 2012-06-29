export LANG=en_GB.UTF-8
export CC=/usr/bin/gcc-4.2
export PATH=~/bin:/usr/local/bin:/usr/local/sbin:$PATH

source ~/.rvm/scripts/rvm
__rvm_project_rvmrc

export EDITOR=subl

ZSH=$HOME/.oh-my-zsh
ZSH_THEME="k-m"
DISABLE_AUTO_UPDATE="true"
plugins=(git rvm osx)
source $ZSH/oh-my-zsh.sh

alias rezsh="vim ~/.zshrc && source ~/.zshrc"
alias rework="vim ~/.work_profile && source ~/.work_profile"

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
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --"

alias pw="ruby -e 'puts (((\"A\"..\"Z\").to_a.join.tap{|l| l<<l.downcase} << \"!@$%^&*()1234567890,.<>;:{}[]-=_+\")*5).split(\"\").shuffle.first(18).join'"

export MAGICK_HOME=/usr/local/Cellar/imagemagick/6.7.5-7/
export PATH=$PATH:$MAGICK_HOME/bin
export DYLD_LIBRARY_PATH=$MAGICK_HOME/lib

# secret aliases
[[ -s $HOME/.work_profile ]] && source $HOME/.work_profile
