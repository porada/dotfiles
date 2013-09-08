# Set locale variables to prevent possible encoding issues
export LANG='en_US'
export LC_ALL='en_US.UTF-8'

# Make nano the default editor
export EDITOR='nano'

# Don’t clear the screen after quitting a manual page
export MANPAGER='less -X'

# Manage paths
export DOTFILES_PATH=$HOME/.dotfiles
VENDOR_PATH=$DOTFILES_PATH/vendor

# Load oh-my-zsh
ZSH=$VENDOR_PATH/oh-my-zsh
ZSH_THEME='macovsky'
DISABLE_AUTO_UPDATE='true'
source $ZSH/oh-my-zsh.sh

# Initialize plugins
source $VENDOR_PATH/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $VENDOR_PATH/zsh-history-substring-search/zsh-history-substring-search.zsh
source $VENDOR_PATH/z/z.sh
eval "$(rbenv init - --no-rehash)"

# Load the rest of dotfiles
source $DOTFILES_PATH/path.zsh
source $DOTFILES_PATH/aliases.zsh
source $DOTFILES_PATH/extra.zsh
