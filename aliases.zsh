# Allow aliases to be used with `sudo`
alias sudo='sudo '

# Print the path or change working directory to the top-most Finder window location
alias pwdf='osascript -e "tell app \"Finder\" to POSIX path of (insertion location as alias)"'
alias cdf='cd `pwdf`'

# Syntax-highlighted version of `cat`
alias ca='pygmentize -g'

# Ruby-related aliases
alias rb='rbenv'
alias be='bundle exec'
alias bi='bundle install'
alias bu='bundle update'

# Determine local and public IP
alias ip='ipconfig getifaddr en1 && dig +short myip.opendns.com @resolver1.opendns.com'

# Shorten `brew cask`
alias cask='brew cask'
