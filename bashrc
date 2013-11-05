 
# to enable .bashrc on mac
# open /etc/bashrc and add below
# if [ -f ~/.bashrc ]; then
# . ~/.bashrc
# fi

# set console color
export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad
export PS1='\[\033[32m\]\u:\[\033[36m\]\w \[\033[m\]$ '

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

export JAVA_HOME='/Library/Java/JavaVirtualMachines/jdk1.7.0_25.jdk/Contents/Home'

export NDK_ROOT='/usr/local/Cellar/android-ndk/9'
export ANDROID_HOME='/usr/local/Cellar/android-sdk/r22.0.5/'

#function parse_git_branch { 
#   git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/' 
#} 
#export PS1="\h:\W $(parse_git_branch) $ "
