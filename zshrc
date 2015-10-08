# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

bindkey -e

HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.config/zsh_history

# oh-my-zsh
export ZSH_THEME="steeef"

source $ZSH/oh-my-zsh.sh
source $HOME/.zshenv

bindkey ^r zaw-history
bindkey ^h zaw-ssh-hosts

export GOPATH=$HOME/gocode
export PATH=/usr/local/bin:/usr/local/sbin:$PATH:$GOPATH/bin

export ANT_ROOT='/usr/local/opt/ant/bin'
export NDK_ROOT='/usr/local/opt/android-ndk'
export ANDROID_HOME='/usr/local/opt/android-sdk'
export ANDROID_SDK_ROOT='/usr/local/opt/android-sdk'

plugins=(git)

alias ll="ls -lh"

# The next line updates PATH for the Google Cloud SDK.
if [ -e '/opt/homebrew-cask/Caskroom/google-cloud-sdk' ]; then
  source '/opt/homebrew-cask/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'
  source '/opt/homebrew-cask/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc'
fi

