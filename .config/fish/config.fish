# Resolve common paths
set -l DOTFILES_FISH_DIR (path dirname (path resolve (status filename)))
set -l DOTFILES_CONFIG_DIR (path dirname "$DOTFILES_FISH_DIR")
set -l DOTFILES (path dirname "$DOTFILES_CONFIG_DIR")
set -l DOTFILES_BIN_DIR "$DOTFILES/bin"

# Set the default editor
set -x EDITOR 'vim -c startinsert'

# Don’t clear the screen after a `less` session
set -x LESS -FRX
set -x PAGER "less $LESS"
set -x MANPAGER "less $LESS"

# Don’t keep history between `less` sessions
set -x LESSHISTFILE -

# Configure `node`
set -x NODE_OPTIONS '--trace-uncaught --unhandled-rejections=strict'

# Enable persistent REPL history for `node`
set -x NODE_REPL_HISTORY "$HOME/.node_history"
set -x NODE_REPL_MODE sloppy

# Set `npm` config paths
set -x NPM_CONFIG_GLOBALCONFIG "$DOTFILES_CONFIG_DIR/npm/global.npmrc"
set -x NPM_CONFIG_USERCONFIG "$DOTFILES_CONFIG_DIR/npm/user.npmrc"

# Opt out of telemetry
set -x DO_NOT_TRACK 1
set -x HOMEBREW_NO_ANALYTICS 1

# Disable automatic `brew` updates
set -x HOMEBREW_NO_AUTO_UPDATE 1
set -x HOMEBREW_NO_ENV_HINTS 1

# Set `$PATH`
fish_add_path --path --move /opt/homebrew/sbin
fish_add_path --path --move /opt/homebrew/bin
fish_add_path --path --move "$DOTFILES_BIN_DIR"

# Load dotfiles
. "$DOTFILES_FISH_DIR/aliases.fish"
. "$DOTFILES_FISH_DIR/colors.fish"
. "$DOTFILES_FISH_DIR/extra.fish" >/dev/null 2>&1
