# Quick navigation
alias p='cd ~/Projects'
alias d='cd ~/Desktop'

# Shorten the frequently used commands
alias v=$EDITOR
alias a='atom'
alias g='git'
function o { open ${@:-'.'} }

# Show and hide hidden files in Finder
alias show='defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder'
alias hide='defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder'

# Show hidden files by default when using `ls`
alias ls='command ls -AG'

# Create a directory and enter it
function md { mkdir -p $1 && cd $_ }

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
alias rg='bundle exec rails generate'
alias rx='bundle exec rails runner "Rails.cache.clear" && powder restart'

# Middleman-related aliases
alias mb='bundle exec middleman build'
alias mdeploy='bundle exec middleman deploy'
function ms { bundle exec middleman server --port ${@:-'3000'} }

# Determine local and public IP
function ip {
  ifconfig -a inet | awk '/inet/ {print $2}' | grep -v 127.0.0.1
  dig +short myip.opendns.com @resolver1.opendns.com
}
