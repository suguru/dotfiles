# dotfiles for private environment

# Setup machine

### homebrew

```
/bin/bash -c $(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)
```

### apps

```
brew install iterm2 \
  visual-studio-code \
  docker \
  notion \
  sequel-ace \
  google-japanese-ime \
  slack \
  raycast \
  warp \
  --cask
```

### tools

```
brew install gh starship neovim go node rust corepack awscli zsh-completions
brew install mysql --client-only
```

### fonts

```
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font
```

### clone this repo

```bash
gh repo clone suguru/dotfiles
```

### symlink dotfiles

```bash
ln -s -F ~/dotfiles/.zshrc ~/.zshrc
```

### zinit

```bash
sh -c "$(curl -fsSL https://git.io/zinit-install)"
source ~/.zshrc
zinit self-update
```

### astovim

```bash
git clone https://github.com/AstroNvim/AstroNvim ~/.config/nvim
nvim +PackerSync
``` 
astovim config

```bash
ln -s ~/dotfiles/astovim ~/.config/nvim/lua/user
```

### generate ssh keys

```bash
ssh-keygen -t ed25519 -C "snamura@gmail.com"
eval "$(ssh-agent -s)"
```

modify `~/.ssh/config`

```
Host *
  AddKeysToAgent yes
  IdentityFile ~/.ssh/id_ed25519
```

### Key repeating configuration

```bash
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool falsedefaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false
```
