#
# User configuration sourced by interactive shells
#
if [[ ! -d ~/.zplug ]];then
  git clone https://github.com/zplug/zplug ~/.zplug
fi

export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

# zplug zsh plugin manager
source ~/.zplug/init.zsh

zplug "zplug/zplug"
zplug "mafredri/zsh-async"
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"
zplug "b4b4r07/enhancd"
# zplug "sindresorhus/pure"
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

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.config/zsh_history

# key bind for history search
zmodload zsh/terminfo
bindkey "$terminfo[cuu1]" history-substring-search-up
bindkey "$terminfo[cud1]" history-substring-search-down

if [ -e $HOME/.zshenv ]; then
  source $HOME/.zshenv
fi

if [ -e /usr/local/share/zsh/site-functions ]; then
  source /usr/local/share/zsh/site-functions
fi

autoload -U compinit
compinit
export LSCOLORS=exfxcxdxbxegedabagacad
export LS_COLORS='no=00;37:fi=00:di=00;33:ln=04;36:pi=40;33:so=01;35:bd=40;33;01:'
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# indicator for vi mode
zle-keymap-select () {
  VI_KEYMAP=$KEYMAP
  zle reset-prompt
  zle -R
}
zle -N zle-keymap-select

export GO111MODULE=on
export GOPATH=$HOME/go
export GO111MODULE=on
export GOPROXY=https://proxy.golang.org

export FLUTTERPATH=$HOME/flutter

export PATH=/usr/local/bin:/usr/local/sbin:$PATH:$GOPATH/bin:$FLUTTERPATH/bin
export PATH=/usr/local/google-cloud-sdk/bin:$PATH
export PATH=/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/bin:$PATH

export XDG_CONFIG_HOME=~/.config

export ANT_ROOT='/usr/local/opt/ant/bin'
export ANDROID_HOME=$HOME/Library/Android/sdk
export ANDROID_ROOT=$ANDROID_HOME
export PATH=$ANDROID_HOME/platform-tools:$PATH

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

eval "$(starship init zsh)"

# /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/bin/gcloud
export GCLOUD_PATH=/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk
#
# The next line updates PATH for the Google Cloud SDK.
if [ -f "/${GCLOUD_PATH}/path.zsh.inc" ]; then . "${GCLOUD_PATH}/path.zsh.inc"; fi

# The next line enables shell command completion for gcloud.
if [ -f "/${GCLOUD_PATH}/completion.zsh.inc" ]; then . "${GCLOUD_PATH}/completion.zsh.inc"; fi
