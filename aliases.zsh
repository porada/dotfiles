# Quick navigation
alias p='cd ~/Projects'
alias d='cd ~/Desktop'

# Global aliases
alias -g v=$EDITOR
alias -g g='git'

# Smart alias for `subl`
function s { subl ${@:-'.'} }

# Smart alias for `open`
function o { open ${@:-'.'} }

# Print the path or change working directory to the top-most Finder window location
alias pwdf='osascript -e "tell app \"Finder\" to POSIX path of (insertion location as alias)"'
alias cdf='cd `pwdf`'

# Show and hide hidden files in Finder
alias show='defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder'
alias hide='defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder'

# Show hidden files by default when using `ls`
alias ls='command ls -AG'

# Recursively remove given files and directories
alias rmd='rm -rfv'

# Syntax-highlighted version of `cat`
alias ca='pygmentize -g'

# Use colored `git diff` instead of `diff`
alias diff='git diff --no-index'

# Ruby-related aliases
alias rg='rbenv global'
alias rl='rbenv local'
alias rv='rbenv versions'
alias be='bundle exec'
alias bi='bundle install'
alias bu='bundle update'
alias rs='bundle exec rails server'
alias rc='bundle exec rails console'
alias rx='bundle exec rails runner "Rails.cache.clear" && powder restart'
alias mm='bundle exec middleman'
function ms { bundle exec middleman server --port ${@:-'3000'} }
alias pow='powder'

# Determine local and public IP
alias ip='ipconfig getifaddr en1 && dig +short myip.opendns.com @resolver1.opendns.com'

# Intuitive map function: `ls *.* | map cat`
alias map='xargs -n1'

# Smart alias for `proxylocal`
function proxy { proxylocal --host porada ${@:-'3000'} }
