# Quick navigation
abbr p "cd ~/Projects"

# Shorten the frequently used commands
abbr a "atom"
abbr g "git"
abbr k "killall"
abbr o "open"
abbr v "vim"

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

# Node-related aliases
abbr ni "npm install"
abbr no "npm outdated"
abbr nu "npm upgrade"
abbr nr "npm run"
abbr ns "npm start"
abbr nt "npm test"
abbr nx "find . -name node_modules -type d -exec rm -rf {} \;"

abbr ya "yarn add"
abbr yo "yarn outdated"
abbr yr "yarn run"
abbr ys "yarn start"
abbr yt "yarn test"
abbr yu "yarn upgrade"

# Tmux-related aliases
abbr ta "tmux attach -t"
abbr tk "tmux kill-session -t"
abbr tl "tmux list-sessions"
abbr tn "tmux new -s"

# Raspberry Pi
abbr pi "ssh pi@raspberrypi.local"
