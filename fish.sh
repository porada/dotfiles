# Set locale variables to prevent possible encoding issues
set -x LANG "en_US"
set -x LC_ALL "en_US.UTF-8"

# Set the default editor
set -x EDITOR "vim -c startinsert"

# Don’t clear the screen after quitting a manual page
set -x MANPAGER "less -X"

# Disable Homebrew analytics
set -x HOMEBREW_NO_ANALYTICS 1

# Set dotfiles paths
set -x DOTFILES_PATH "$HOME/.dotfiles"
set -x DOTFILES_BIN_PATH "$DOTFILES_PATH/bin"
set -x DOTFILES_FISH_PATH "$DOTFILES_PATH/.config/fish"

# Set dotfiles paths
set -x PATH "/sbin" "$PATH"
set -x PATH "/bin" "$PATH"
set -x PATH "/usr/sbin" "$PATH"
set -x PATH "/usr/bin" "$PATH"
set -x PATH "/usr/local/bin" "$PATH"
set -x PATH "/opt/homebrew/sbin" "$PATH"
set -x PATH "/opt/homebrew/bin" "$PATH"
set -x PATH "$DOTFILES_BIN_PATH" "$PATH"

# Define prompt colors
. "$DOTFILES_FISH_PATH/colors.fish"

# Load dotfiles
. "$DOTFILES_PATH/aliases.sh"
. "$DOTFILES_PATH/extra.sh"
