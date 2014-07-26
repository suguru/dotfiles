
bindkey -e

HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.config/zsh_history

# antigen
source ~/.antigenrc

bindkey ^r zaw-history
bindkey ^h zaw-ssh-hosts

export PATH=/usr/local/bin:/usr/local/sbin:$PATH:~/workspace/cocos2dx/cocos2d-x/tools/cocos2d-console/bin

export ANT_ROOT='/usr/local/opt/ant/bin'
export NDK_ROOT='/usr/local/opt/android-ndk'
export ANDROID_HOME='/usr/local/opt/android-sdk'
export ANDROID_SDK_ROOT='/usr/local/opt/android-sdk'

export GOPATH=$HOME/gocode
