# ja_JP.UTF-8

# 環境固有の情報はこっちに書く
source $HOME/.zshrc_local

# The following lines were added by compinstall
zstyle :compinstall filename "$HOME/zshrc"

# 補完機能を有効にする
autoload -Uz compinit
compinit

#
# LANG
#

# 日本語化
export LANG=ja_JP.UTF-8

#
# set prompt
#

# プロンプトの設定
# 通常のプロンプト
PROMPT="%/%% "
# 継続行入力時のプロンプト
PROMPT2="%_%% "
# 入力時ミス確認時のプロンプト
SPROMPT="%r is correct? [n,y,a,e]: "

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

# ignore duplication command history list
setopt hist_ignore_dups

# share command histroy data
setopt share_history

# emacs like keybind
bindkey -e

# no beep sound when complete list displayed
setopt nolistbeep

# enable predict completion
# 先方予測入力を有効にする
# autoload predict-on
# predict-on

# enable zed editor
# zed エディタを有効にする
autoload zed

# グローバルエイリアス
alias -g ...=../../
alias -g ....=../../../
alias -g .....=../../../../

export PATH="$PATH:$HOME/.local/bin"

# rm -> trash
alias rm=trash-put
alias gl="git ls"


#
# Ruby 用の環境設定
#

export RBENV_ROOT="${HOME}/.local/opt/rbenv"
export PATH=${RBENV_ROOT}/bin:${PATH}
export PATH=${RBENV_ROOT}/shims:${PATH}
# Load rbenv automatically by adding
# the following to ~/.bash_profile:

eval "$(rbenv init - zsh)"


#
# cabal

export PATH=~/.cabal/bin:${PATH}

#
# pyenv
#
export PATH=${HOME}/.pyenv/bin:$PATH
eval "$(pyenv init -)"


#
# nvm
#
source ~/.nvm/nvm.sh
# ndenv
export PATH="$HOME/.ndenv/bin:$PATH"

#
# JAVA
#

export JAVA_HOME=/usr/lib/jvm/java-8-oracle/

export PATH=$PATH:${HOME}/.local/opt/apache-maven/bin

#
# Scala
#
export PATH="${HOME}/.local/opt/scala/bin:${PATH}"

#
# R
#
export R_LIBS_USER=~/.local/lib/R

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:${HOME}/.local/lib

