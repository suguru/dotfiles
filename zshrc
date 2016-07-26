#
# User configuration sourced by interactive shells
#

# Source zim
#if [[ -s ${ZDOTDIR:-${HOME}}/.zim/init.zsh ]]; then
#  source ${ZDOTDIR:-${HOME}}/.zim/init.zsh
#fi
# User configuration sourced by interactive shells
#

# zplug zsh plugin manager
source ~/.zplug/zplug
zplug "zplug/zplug"
zplug "mafredri/zsh-async"
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"

zplug "sindresorhus/pure"
zplug "chrissicool/zsh-256color"

zplug "felixr/docker-zsh-completion"

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi
# Then, source plugins and add commands to $PATH
zplug load

HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.config/zsh_history

source $HOME/.zshenv

autoload -U compinit
compinit
export LSCOLORS=exfxcxdxbxegedabagacad
#export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
#zstyle ':completion:*' list-colors 'di=34' 'ln=35' 'so=32' 'ex=31' 'bd=46;34' 'cd=43;34'
export LS_COLORS='no=00;37:fi=00:di=00;33:ln=04;36:pi=40;33:so=01;35:bd=40;33;01:'
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

export GOPATH=$HOME/go
export PATH=/usr/local/bin:/usr/local/sbin:$HOME/anaconda/bin:$PATH:$GOPATH/bin
export PATH=~/.pyenv/shims:$PATH

export XDG_CONFIG_HOME=~/.config

export ANT_ROOT='/usr/local/opt/ant/bin'
export NDK_ROOT='/usr/local/opt/android-ndk'
export ANDROID_HOME='/usr/local/opt/android-sdk'
export ANDROID_SDK_ROOT='/usr/local/opt/android-sdk'

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

alias gls="gls --color"
alias ls="ls -G"
alias ll="ls -lh"
alias vi="nvim"
alias vim="nvim"

# The next line updates PATH for the Google Cloud SDK.
if [ -e /usr/local/google-cloud-sdk ]; then
  source /usr/local/google-cloud-sdk/path.zsh.inc
  source /usr/local/google-cloud-sdk/completion.zsh.inc
fi

export PATH=$HOME/bin:$PATH
