# Set locale variables to prevent possible encoding issues
set -x LANG "en_US.UTF-8"
set -x LC_ALL "en_US.UTF-8"

# Set the default editor
set -x EDITOR "vim -c startinsert"

# Don’t clear the screen after a `less` session
set -x LESS "-FRX"
set -x PAGER "less $LESS"
set -x MANPAGER "less $LESS"

# Don’t keep history between `less` sessions
set -x LESSHISTFILE "-"

# Configure `node`
set -x NODE_OPTIONS "--no-deprecation --trace-uncaught --unhandled-rejections=strict"

# Enable persistent REPL history for `node`
set -x NODE_REPL_HISTORY "$HOME/.node_history"
set -x NODE_REPL_MODE "sloppy"

# Opt out of telemetry
set -x DO_NOT_TRACK 1
set -x HOMEBREW_NO_ANALYTICS 1

# Set `$PATH`
set -l DOTFILES "$HOME/.dotfiles"

fish_add_path --path --move --append "$DOTFILES/bin"
fish_add_path --path --move "/opt/homebrew/bin"
fish_add_path --path --move "/opt/homebrew/sbin"

# Set prompt colors
. "$DOTFILES/.config/fish/colors.fish"

# Load dotfiles
. "$DOTFILES/aliases.fish"
. "$DOTFILES/extra.fish"
