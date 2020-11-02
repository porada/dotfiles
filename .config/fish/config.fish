# Set locale variables to prevent possible encoding issues
set -x LANG "en_US"
set -x LC_ALL "en_US.UTF-8"

# Set the default editor
set -x EDITOR "vim -c startinsert"

# Don’t clear the screen after quitting a manual page
set -x MANPAGER "less -X"

# Set dotfiles paths
set -x DOTFILES_PATH "$HOME/.dotfiles"
set -x DOTFILES_BIN_PATH "$DOTFILES_PATH/bin"
set -x DOTFILES_FISH_PATH "$DOTFILES_PATH/.config/fish"

# Set Ruby gem paths
set -x GEM_HOME "$DOTFILES_PATH/.gems"
set -x GEM_BIN_PATH = "$GEM_HOME/bin"

# Set dotfiles paths
set -x PATH "/sbin" $PATH
set -x PATH "/bin" $PATH
set -x PATH "/usr/sbin" $PATH
set -x PATH "/usr/bin" $PATH
set -x PATH "/usr/local/bin" $PATH
set -x PATH "/usr/local/sbin" $PATH
set -x PATH "/usr/local/opt/ruby/bin" $PATH
set -x PATH "/usr/local/opt/node@14/bin" $PATH
set -x PATH "$GEM_BIN_PATH" $PATH
set -x PATH "$DOTFILES_BIN_PATH" $PATH
set -x PATH "./node_modules/.bin" $PATH
set -x PATH "./bin" $PATH

# Load dotfiles
. "$DOTFILES_FISH_PATH/aliases.fish"
. "$DOTFILES_FISH_PATH/colors.fish"
. "$DOTFILES_FISH_PATH/extra.fish"
