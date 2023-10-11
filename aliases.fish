# Quick navigation
abbr p "cd ~/Projects"

# Shorten the frequently used commands
abbr c "code"
abbr g "git"
abbr k "killall"
abbr n "node"
abbr o "open"
abbr v "vim"
abbr y "yarn"

# Show hidden files by default when using `ls`
abbr ls "ls -A"

# Recursively remove given files and directories
abbr rr "rm -rfv"

# Remove `node_modules`
abbr nx "find . -name node_modules -type d -prune -print -exec rm -rf '{}' +"