 
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

# vi alias
alias vi='/usr/local/bin/vi'
alias vim='/usr/local/bin/vi'

# homebrew
export PATH=/usr/local/bin:/usr/local/sbin:$PATH

# bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
	. $(brew --prefix)/etc/bash_completion
fi

