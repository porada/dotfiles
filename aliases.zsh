# Quick navigation
alias p='cd ~/Projects'
alias d='cd ~/Desktop'

# Shorten the frequently used commands
alias g='git'
alias a='atom'
alias o='open'

# Show and hide hidden files in Finder
alias show='defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder'
alias hide='defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder'

# Show hidden files by default when using `ls`
alias ls='command ls -AG'
alias lsd='tree -ad'

# Recursively remove given files and directories
alias rmd='rm -rfv'

# Ruby-related aliases
alias be='bundle exec'
alias bi='bundle install'
alias bo='bundle outdated'
alias bu='bundle update'

# Rails-related aliases
alias rs='bundle exec rails server'
alias rc='bundle exec rails console'
alias rx='bundle exec rails runner "Rails.cache.clear" && powder restart'

# Middleman-related aliases
alias mb='bundle exec middleman build'
alias md='bundle exec middleman deploy'
alias ms='bundle exec middleman server'
