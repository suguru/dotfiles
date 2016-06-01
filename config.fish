# Path to Oh My Fish install.
set -gx OMF_PATH "/Users/suguru/.local/share/omf"

# Customize Oh My Fish configuration path.
#set -gx OMF_CONFIG "/Users/suguru/.config/omf"

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

set -gx GOPATH "$HOME/go"
set -gx PATH $GOPATH/bin $PATH

alias vim=nvim
alias vi=nvim
