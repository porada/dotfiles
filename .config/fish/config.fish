# Set locale variables to prevent possible encoding issues
set -x LANG "en_US"
set -x LC_ALL "en_US.UTF-8"

# Set the default editor
set -x EDITOR "vim -c startinsert"

# Don’t clear the screen after quitting a manual page
set -x MANPAGER "less -X"

# Set dotfiles paths
set -x PATH /sbin $PATH
set -x PATH /bin $PATH
set -x PATH /usr/sbin $PATH
set -x PATH /usr/bin $PATH
set -x PATH /usr/local/sbin $PATH
set -x PATH /usr/local/bin $PATH
set -x PATH /usr/local/opt/node@6/bin $PATH
set -x PATH (yarn global bin) $PATH
set -x PATH ~/.dotfiles/bin $PATH
set -x PATH ./node_modules/.bin $PATH
set -x PATH ./bin $PATH
