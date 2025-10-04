# Set locale variables to prevent possible encoding issues
set -x LANG "en_US.UTF-8"
set -x LC_ALL "en_US.UTF-8"

# Set the default editor
set -x EDITOR "vim -c startinsert"

# Don’t clear the screen after quitting a manual page
set -x MANPAGER "less -X"

# Enable persistent REPL history for `node`
set -x NODE_REPL_HISTORY "$HOME/.node_history"
set -x NODE_REPL_MODE "sloppy"

# Opt out of telemetry
set -x DO_NOT_TRACK 1
set -x HOMEBREW_NO_ANALYTICS 1

# Set paths
set -x DOTFILES_PATH "$HOME/.dotfiles"

set -x PATH "/sbin" $PATH
set -x PATH "/bin" $PATH
set -x PATH "/usr/sbin" $PATH
set -x PATH "/usr/bin" $PATH
set -x PATH "/usr/local/bin" $PATH
set -x PATH "/opt/homebrew/sbin" $PATH
set -x PATH "/opt/homebrew/bin" $PATH
set -x PATH "$DOTFILES_PATH/bin" $PATH

# Define prompt colors
. "$DOTFILES_PATH/.config/fish/colors.fish"

# Load dotfiles
. "$DOTFILES_PATH/aliases.fish"
. "$DOTFILES_PATH/extra.fish"
