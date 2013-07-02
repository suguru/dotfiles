 
# to enable .bashrc on mac
# open /etc/bashrc and add below
# if [ -f ~/.bashrc ]; then
# . ~/.bashrc
# fi

# set console color
export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad

# useful alias
alias ll='ls -alh'
alias la='ls -a'

# homebrew
export PATH=/usr/local/bin:/usr/local/sbin:$PATH

# alias for vi
VIM_HOME=/usr/local/Cellar/macvim/7.3-66
alias vi='$VIM_HOME/bin/vi'
alias vim='$VIM_HOME/bin/vim'
alias vimex='$VIM_HOME/bin/vimex'
alias vimdiff='$VIM_HOME/bin/vimdiff'


# bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
	. $(brew --prefix)/etc/bash_completion
fi

export JAVA_HOME='/Library/Java/JavaVirtualMachines/jdk1.7.0_25.jdk/Contents/Home'

export NDK_ROOT='/usr/local/Cellar/android-ndk/r8e'
export ANDROID_HOME='/usr/local/Cellar/android-sdk/r22.0.1/'
