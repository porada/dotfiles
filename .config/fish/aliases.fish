# Quick navigation
abbr p "cd ~/Projects"

# Shorten the frequently used commands
abbr a "atom"
abbr g "git"
abbr k "killall"
abbr n "node"
abbr o "open"
abbr v "vim"
abbr y "yarn"

# Show hidden files by default when using `ls`
abbr ls "ls -A"

# Recursively remove given files and directories
abbr rmd "rm -rfv"

# Ruby-related aliases
abbr rake "env RUBYOPT=-W0 rake"

abbr be "bundle exec"
abbr bi "bundle install"
abbr bo "bundle outdated"
abbr bu "bundle update"

# Rails-related aliases
abbr rl "tail -f log/development.log"
abbr rs "bundle exec rails server"
abbr rc "bundle exec rails console"
abbr rg "bundle exec rails generate"
abbr rx "bundle exec rails runner \"Rails.cache.clear\""

# Tmux-related aliases
abbr ta "tmux attach -t"
abbr tk "tmux kill-session -t"
abbr tl "tmux list-sessions"
abbr tn "tmux new -s"

# Raspberry Pi
abbr pi "ssh pi@raspberrypi.local"
