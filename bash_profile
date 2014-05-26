# to enable .bashrc on mac
# open /etc/bashrc and add below
# if [ -f ~/.bashrc ]; then
# . ~/.bashrc
# fi

# set console color
export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad
export PS1='\[\033[32m\]\u:\[\033[36m\]\w\[\033[0;33m\]$(__git_ps1)\[\033[1;34m\] \$\[\033[00m\] '

# useful alias
alias ll='ls -alh'
alias la='ls -a'

# homebrew
export PATH=/usr/local/bin:/usr/local/sbin:$PATH

# alias for vi
#VIM_HOME=/usr/local/Cellar/macvim/7.3-66
#alias vi='$VIM_HOME/bin/vi'
#alias vim='$VIM_HOME/bin/vim'
#alias vimex='$VIM_HOME/bin/vimex'
#alias vimdiff='$VIM_HOME/bin/vimdiff'

# bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

export JAVA_HOME='/Library/Java/JavaVirtualMachines/jdk1.7.0_45.jdk/Contents/Home'

export ANT_ROOT='/usr/local/opt/ant/bin'
export NDK_ROOT='/usr/local/opt/android-ndk'
export ANDROID_HOME='/usr/local/opt/android-sdk'
export ANDROID_SDK_ROOT='/usr/local/opt/android-sdk'

export GOPATH=$HOME/gocode
export GOROOT=/usr/local/Cellar/go/1.2/libexec

export DOCKER_HOST=tcp://127.0.0.1:4243

export COCOS_CONSOLE_ROOT='/Users/a10682/workspace/cocos2dx/cocos2d-x-3.0/tools/cocos2d-console/bin'

#PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
PATH=$PATH:$HOME/gocode/bin

[[ -s "$HOME/.bash_private" ]] && source "$HOME/.bash_private" # load private files not on github
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile
#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Add environment variable COCOS_CONSOLE_ROOT for cocos2d-x
export PATH=$PATH:$COCOS_CONSOLE_ROOT
