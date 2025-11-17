# Clean up legacy abbreviations
set -l abbr (abbr --list)

if test (count $abbr) -gt 0
    abbr --erase $abbr
end

# Shorten frequently used commands
abbr c code
abbr g git
abbr o open
abbr p pnpm

# Show hidden files by default when using `ls`
alias ls "ls -A"

# Recursively remove all `.DS_Store` files
alias rmds "find . -type f -name '*.DS_Store' -ls -delete"
