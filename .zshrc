# Configure ZSH
autoload -Uz compinit promptinit
compinit
promptinit
setopt autocd

# Set locale variables to prevent possible encoding issues
export LANG="en_US"
export LC_ALL="en_US.UTF-8"

# Set the default editor
export EDITOR="vim -c startinsert"

# Don’t clear the screen after quitting a manual page
export MANPAGER="less -X"

# Set dotfiles paths
export DOTFILES_PATH="$HOME/.dotfiles"
VENDOR_PATH="$DOTFILES_PATH/vendor"

PATH="/sbin:$PATH"
PATH="/bin:$PATH"
PATH="/usr/sbin:$PATH"
PATH="/usr/bin:$PATH"
PATH="/usr/local/sbin:$PATH"
PATH="/usr/local/bin:$PATH"
PATH="/usr/local/opt/node@6/bin:$PATH"
PATH="$DOTFILES_PATH/bin:$PATH"
PATH="./node_modules/.bin:$PATH"
PATH="./bin:$PATH"

# Load dotfiles
source $DOTFILES_PATH/aliases.zsh
source $DOTFILES_PATH/extra.zsh > /dev/null 2>&1
