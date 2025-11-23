# Clean up legacy abbreviations
abbr --erase (abbr --list) >/dev/null 2>&1

# Shorten frequently used commands
abbr c code
abbr g git
abbr o open
abbr p pnpm

# Show hidden files by default when using `ls`
alias ls 'ls -A'
