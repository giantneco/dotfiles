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

export PATH="$PATH:$HOME/local/bin"

# rm -> trash
alias rm=trash-put

#
# git
#
alias gs="git status"
alias gl="git log"
alias gb="git branch -a"
alias gi="git commit"
