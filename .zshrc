export HISTSIZE=1000
export SAVEHIST=10000

### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust \
    zdharma-continuum/fast-syntax-highlighting \
    zsh-users/zsh-autosuggestions \
    zsh-users/zsh-completions \
    zdharma/history-search-multi-word

# Git completion
zinit wait silent lucid atclone"zstyle ':completion:*:*:git:*' script git-completion.bash" atpull"%atclone" for \
  "https://github.com/git/git/blob/master/contrib/completion/git-completion.bash"
zinit wait lucid as"completion" atload"zicompinit; zicdreplay" mv"git-completion.zsh -> _git" for \
  "https://github.com/git/git/blob/master/contrib/completion/git-completion.zsh"

### End of Zinit's installer chunk

alias vi=nvim
alias python=python3

# pnpm
export PNPM_HOME="/Users/suguru/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

export GOPRIVATE="github.com/LayerXcom/*"

PATH=$HOME/.bin:$HOME/go/bin:$HOME/.cargo/bin:/opt/homebrew/bin:$PATH

eval "$(starship init zsh)"

