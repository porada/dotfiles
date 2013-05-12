# Quick navigation
alias p='cd ~/Projects'
alias d='cd ~/Desktop'
alias dl='cd ~/Downloads'

# Allow aliases to be used with `sudo`
alias sudo='sudo '

# Wrapper for `command -v` that’s more convenient to use
alias available='command -v > /dev/null 2>&1 --'

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

# Copy to clipboard while printing it: `cat foo | copy`
alias copy='tee /dev/tty | pbcopy'

# Use colored `git diff` instead of `diff`
available git && alias diff='git diff --no-index --color-words'

# Ruby-related aliases
alias rb='rbenv'
alias be='bundle exec'
alias bi='bundle install'
alias bu='bundle update'

# Determine local and public IP
alias ip='ipconfig getifaddr en1 && dig +short myip.opendns.com @resolver1.opendns.com'

# Shorten `brew cask`
alias cask='brew cask'

# Intuitive map function: `ls *.* | map cat`
alias map='xargs -n1'

# Smart aliases for `subl`, `open` and `git`
function s { subl ${@:-'.'} }
function o { open ${@:-'.'} }
function g { git  ${@:-'s'} }
