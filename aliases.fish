# Quick navigation
alias p "cd ~/Projects"
alias d "cd $DOTFILES_PATH"

# Shorten the frequently used commands
abbr a "atom"
abbr b "bundle"
abbr g "git"
abbr k "killall"
abbr n "node"
abbr o "open"
abbr r "bundle exec rails"
abbr v "vim"
abbr y "yarn"

# Show hidden files by default when using `ls`
abbr ls "ls -A"

# Recursively remove given files and directories
abbr rmd "rm -rfv"

# Ruby-related aliases
abbr be "bundle exec"

# Rails-related aliases
abbr rl "tail -f log/development.log"
abbr rx "bundle exec rails runner \"Rails.cache.clear\""

# Node-related aliases
alias nx "find . -name node_modules -type d -exec rm -rf {} \;"

# Raspberry Pi
abbr pi "ssh pi@raspberrypi.local"
