# Set the default editor
set -x EDITOR "vim -c startinsert"

# Don’t clear the screen after a `less` session
set -x LESS -FRX
set -x PAGER "less $LESS"
set -x MANPAGER "less $LESS"

# Don’t keep history between `less` sessions
set -x LESSHISTFILE -

# Configure `node`
set -x NODE_OPTIONS "--trace-uncaught --unhandled-rejections=strict"

# Enable persistent REPL history for `node`
set -x NODE_REPL_HISTORY "$HOME/.node_history"
set -x NODE_REPL_MODE sloppy

# Opt out of telemetry
set -x DO_NOT_TRACK 1
set -x HOMEBREW_NO_ANALYTICS 1

# Disable automatic `brew` updates
set -x HOMEBREW_NO_AUTO_UPDATE 1
set -x HOMEBREW_NO_ENV_HINTS 1

# Set `$PATH`
set -l DOTFILES "$HOME/.dotfiles"

fish_add_path --path --move --append "$DOTFILES/bin"
fish_add_path --path --move /opt/homebrew/bin
fish_add_path --path --move /opt/homebrew/sbin
fish_add_path --path --move "$HOME/.local/bin"

# Load dotfiles
set -l DOTFILES_FISH_DIR "$DOTFILES/.config/fish"

. "$DOTFILES_FISH_DIR/colors.fish"
. "$DOTFILES_FISH_DIR/aliases.fish"

# Load `extra.fish` only if it’s available
[ -f "$DOTFILES_FISH_DIR/extra.fish" ]; and . "$DOTFILES_FISH_DIR/extra.fish"
