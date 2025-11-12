# Clean up legacy abbreviations
abbr --erase (abbr --list) 2> /dev/null

# Shorten frequently used commands
abbr c "code"
abbr g "git"
abbr o "open"
abbr p "pnpm"

# Show hidden files by default when using `ls`
alias ls "ls -A"

# Recursively remove all `.DS_Store` files
alias rmds "find . -type f -name '*.DS_Store' -ls -delete"
