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
export PATH="$PATH:$HOME/local/bin"

# rm -> trash
alias rm=trash-put

#
# Ruby 用の環境設定
#
export RBENV_ROOT="${HOME}/.local/opt/rbenv"
export PATH=${RBENV_ROOT}/bin:${PATH}
export PATH=${RBENV_ROOT}/shims:${PATH}
if [ -x ${RBENV_ROOT}/bin/rbenv ]; then
  eval "$(rbenv init - zsh)"
fi

#
# cabal

export PATH=~/.cabal/bin:${PATH}

#
# pyenv
#
export PATH=${HOME}/.pyenv/bin:$PATH
if [ -x ${HOME}/.pyenv/bin/pyenv ]; then
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi

#
# nvm
#
export NVM_DIR="$HOME/.nvm"
if [ -e ${NVM_DIR}/nvm.sh ]; then
  source ${NVM_DIR}/nvm.sh
fi
if [ -e "$NVM_DIR/bash_completion" ]; then
  source "$NVM_DIR/bash_completion"
fi

# JAVA
#
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

#
# git
#
alias gs="git status"
alias gl="git log"
alias gb="git branch -a"
alias gi="git commit"

#
# golang
#
export PATH="/usr/lib/go-1.6/bin":$PATH

#
# Android Studio
#
export ANDROID_HOME=~/local/opt/android/Sdk
export PATH=$ANDROID_HOME/tools/bin:$PATH
export PATH=$ANDROID_HOME/emulator:$PATH
export PATH=$ANDROID_HOME/platform-tools/:$PATH


#
# opam
#
eval `opam config env`

. /home/shingo-s/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true

#
# Google Cloud SDK
#

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/shingo-s/work/kubectl-setting/google-cloud-sdk/path.zsh.inc' ]; then source '/home/shingo-s/work/kubectl-setting/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/shingo-s/work/kubectl-setting/google-cloud-sdk/completion.zsh.inc' ]; then source '/home/shingo-s/work/kubectl-setting/google-cloud-sdk/completion.zsh.inc'; fi


#
# flutter
#
export PATH=$PATH:~/local/opt/flutter/bin

# sdkman settings
export SDKMAN_DIR="$HOME/.sdkman"

#
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
#
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

#
# Roswell
#
export PATH=$PATH:$HOME/.roswell/bin


#
# poac
#
export PATH="$HOME/.poac/bin:$PATH"
