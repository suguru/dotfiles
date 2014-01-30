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

export NDK_ROOT='/usr/local/opt/android-ndk'
export ANDROID_HOME='/usr/local/opt/android-sdk'
export ANDROID_SDK_ROOT='/usr/local/opt/android-sdk'

export GOPATH=$HOME/.go
export GOROOT=/usr/local/Cellar/go/1.2/libexec

#function parse_git_branch { 
#   git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/' 
#} 
#export PS1="\h:\W $(parse_git_branch) $ "

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

[[ -s "$HOME/.bash_private" ]] && source "$HOME/.bash_private" # load private files not on github
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
