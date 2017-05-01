# Quick navigation
alias p='cd ~/Projects'
alias d="cd $DOTFILES_PATH"

# Shorten the frequently used commands
alias a='atom'
alias b='bundle'
alias g='git'
alias k='killall'
alias n='node'
alias o='open'
alias r='bundle exec rails'
alias v='vim'
alias y='yarn'

# Show hidden files by default when using `ls`
alias ls='command ls -AG'

# Create a directory and enter it
function md {
  mkdir -p $1 && cd $_
}

# Recursively remove given files and directories
alias rmd='rm -rfv'

# Ruby-related aliases
alias be='bundle exec'

# Rails-related aliases
alias rl='tail -f log/development.log'
alias rx='bundle exec rails runner "Rails.cache.clear"'

# Node-related aliases
alias nx='find . -name node_modules -type d -exec rm -rf {} \;'

# Raspberry Pi
alias pi='ssh pi@raspberrypi.local'
