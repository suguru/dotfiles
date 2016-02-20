#
# User configuration sourced by interactive shells
#

# Source zim
if [[ -s ${ZDOTDIR:-${HOME}}/.zim/init.zsh ]]; then
  source ${ZDOTDIR:-${HOME}}/.zim/init.zsh
fi
# Path to your oh-my-zsh installation.
#source ~/.zplug/zplug
#zplug "zsh-users/zsh-syntax-highlighting"
#zplug "zsh-users/zsh-history-substring-search"
#zplug "junegunn/dotfiles", as:command, of:bin/vimcat
#zplug "tcnksm/docker-alias", of:zshrc, as:plugin
#zplug load
bindkey -e

HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.config/zsh_history

export ZSH_THEME="steeef"

source $HOME/.zshenv

bindkey ^r zaw-history
bindkey ^h zaw-ssh-hosts

export GOPATH=$HOME/gocode
export PATH=/usr/local/bin:/usr/local/sbin:$PATH:$GOPATH/bin

export ANT_ROOT='/usr/local/opt/ant/bin'
export NDK_ROOT='/usr/local/opt/android-ndk'
export ANDROID_HOME='/usr/local/opt/android-sdk'
export ANDROID_SDK_ROOT='/usr/local/opt/android-sdk'

plugins=(git docker go)

alias ll="ls -lh"

# The next line updates PATH for the Google Cloud SDK.
if [ -e '$HOME/google-cloud-sdk' ]; then
  source '$HOME/google-cloud-sdk/path.zsh.inc'
  source '$HOME/google-cloud-sdk/completion.zsh.inc'
fi
