# Print the path or change working directory to the top-most Finder window location
alias pwdf='osascript -e "tell app \"Finder\" to POSIX path of (insertion location as alias)"'
alias cdf='cd `pwdf`'
