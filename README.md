# dotfiles for private environment

# clone the repository

```
gh repo clone suguru/dotfiles
sudo ln -s /Users/suguru/dotfiles/nix-darwin /etc/nix-darwin
```

# nix

## Install Nix

```sh
curl --proto '=https' --tlsv1.2 -L https://nixos.org/nix/install | sh
```

Check the version

```
nix --version
```

## Install nix-darwin

```
sudo mkdir -p /etc/nix-darwin
sudo chown "$(id -un):$(id -gn)" /etc/nix-darwin
cd /etc/nix-darwin

nix --extra-experimental-features 'nix-command flakes' flake init \
  -t github:nix-darwin/nix-darwin/nix-darwin-26.05

sudo nix --extra-experimental-features 'nix-command flakes' run \
  github:nix-darwin/nix-darwin/nix-darwin-26.05#darwin-rebuild -- \
  switch --flake /etc/nix-darwin
```
Confirm

Then build and apply nix-darwin to the machine

```
sudo darwin-rebuild switch --flake /etc/nix-darwin
```


