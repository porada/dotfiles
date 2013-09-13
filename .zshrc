# Set locale variables to prevent possible encoding issues
export LANG='en_US'
export LC_ALL='en_US.UTF-8'

# Set the default editor
export EDITOR='vim -c startinsert'

# Don’t clear the screen after quitting a manual page
export MANPAGER='less -X'

# Set dotfiles path
export DOTFILES_PATH=$HOME/.dotfiles

# Load dotfiles
source $DOTFILES_PATH/path.zsh
source $DOTFILES_PATH/vendor.zsh
source $DOTFILES_PATH/aliases.zsh
source $DOTFILES_PATH/extra.zsh

# Disable autocorrect
unsetopt correct_all
