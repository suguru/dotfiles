
bindkey -e

HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.config/zsh_history

# antigen
# source ~/.antigenrc
ZSH_THEME="steeef"

bindkey ^r zaw-history
bindkey ^h zaw-ssh-hosts

export ANT_ROOT='/usr/local/opt/ant/bin'
export NDK_ROOT='/usr/local/opt/android-ndk'
export ANDROID_HOME='/usr/local/opt/android-sdk'
export ANDROID_SDK_ROOT='/usr/local/opt/android-sdk'

export GOPATH=$HOME/gocode

export HOMEBREW_GITHUB_API_TOKEN='d364c2f8b4b24ea49dfe8f9e2853272b5c256962'

export PATH=/usr/local/bin:/usr/local/sbin:$GOPATH/bin:$PATH

alias ll="ls -lh"

# [ -f /usr/local/bin/aws_zsh_completer.sh ] && source /usr/local/bin/aws_zsh_completer.sh

# added by travis gem
[ -f /Users/a10682/.travis/travis.sh ] && source /Users/a10682/.travis/travis.sh
