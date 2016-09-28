# Path to Oh My Fish install.
# set -gx OMF_PATH "/Users/suguru/.local/share/omf"

# Customize Oh My Fish configuration path.
# set -gx OMF_CONFIG "/Users/suguru/.config/omf"

# Load oh-my-fish configuration.
# source $OMF_PATH/init.fish
if test -e ~/.config/fish/env.fish
  source ~/.config/fish/env.fish
end

set -gx GCLOUD_SDK_PATH "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk"

set -gx GOPATH "$HOME/go"
set -gx PATH $GOPATH/bin $PATH $GCLOUD_SDK_PATH/bin

set -gx LC_ALL en_US.UTF-8
set -gx LANG en_US.UTF-8

alias vim=nvim
alias vi=nvim
alias vault=/usr/local/bin/vault
