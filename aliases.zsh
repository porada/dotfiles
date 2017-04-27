# Quick navigation
alias p='cd ~/Projects'
alias d='cd ~/Desktop'

# Shorten the frequently used commands
alias g='git'
alias a='atom'
alias o='open'
alias k='killall'

# Show and hide hidden files in Finder
alias show='defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder'
alias hide='defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder'

# Show hidden files by default when using `ls`
alias ls='command ls -AG'
alias lsd='tree -ad'

# Recursively remove given files and directories
alias rmd='rm -rfv'

# Better diff
alias diff='git diff --no-index'

# Ruby-related aliases
alias be='bundle exec'
alias bi='bundle install'
alias bo='bundle outdated'
alias bu='bundle update'

# Rails-related aliases
alias rl='tail -f log/development.log'
alias rs='bundle exec rails server'
alias rc='bundle exec rails console'
alias rg='bundle exec rails generate'
alias rx='bundle exec rails runner "Rails.cache.clear"'

# Node-related aliases
alias na='yarn add'
alias ni='yarn install'
alias no='yarn outdated'
alias nr='yarn run'
alias ns='yarn start'
alias nt='yarn test'
alias nu='yarn upgrade'
alias nx='find . -name node_modules -type d -exec rm -rf {} \;'

# Raspberry Pi
alias pi='ssh pi@raspberrypi.local'
