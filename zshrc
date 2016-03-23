
# User configuration sourced by interactive shells
#

# Path to your oh-my-zsh installation.
#source ~/.zplug/zplug
#zplug "zsh-users/zsh-syntax-highlighting"
#zplug "zsh-users/zsh-history-substring-search"
#zplug "junegunn/dotfiles", as:command, of:bin/vimcat
#zplug "tcnksm/docker-alias", of:zshrc, as:plugin

HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.config/zsh_history

source $HOME/.zshenv

export GOPATH=$HOME/gocode
export PATH=/usr/local/bin:/usr/local/sbin:$PATH:$GOPATH/bin

export XDG_CONFIG_HOME=~/.config

export ANT_ROOT='/usr/local/opt/ant/bin'
export NDK_ROOT='/usr/local/opt/android-ndk'
export ANDROID_HOME='/usr/local/opt/android-sdk'
export ANDROID_SDK_ROOT='/usr/local/opt/android-sdk'

alias ll="ls -lh"

# plugins=(git docker go)

# Source zim
if [[ -s ${ZDOTDIR:-${HOME}}/.zim/init.zsh ]]; then
  source ${ZDOTDIR:-${HOME}}/.zim/init.zsh
fi

# The next line updates PATH for the Google Cloud SDK.
if [ -e $HOME/google-cloud-sdk ]; then
  source $HOME/google-cloud-sdk/path.zsh.inc
  source $HOME/google-cloud-sdk/completion.zsh.inc
fi

