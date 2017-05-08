# Shorten the frequently used commands
alias a='atom'
alias g='git'
alias k='killall'
alias o='open'
alias v='vim'

# Show hidden files by default when using `ls`
alias ls='command ls -AG'

# Recursively remove given files and directories
alias rmd='rm -rfv'

# Ruby-related aliases
alias be='bundle exec'
alias bi='bundle install'
alias bo='bundle outdated'
alias bu='bundle upgrade'

# Rails-related aliases
alias rl='tail -f log/development.log'
alias rs='bundle exec rails server'
alias rc='bundle exec rails console'
alias rg='bundle exec rails generate'
alias rx='bundle exec rails runner "Rails.cache.clear"'

# Node-related aliases
alias ni='npm install'
alias no='npm outdated'
alias nr='npm run'
alias ns='npm start'
alias nt='npm test'
alias nu='npm upgrade'
alias nx='find . -name node_modules -type d -exec rm -rf {} \;'
alias ya='yarn add'
alias yo='yarn outdated'
alias yr='yarn run'
alias ys='yarn start'
alias yt='yarn test'
alias yu='yarn upgrade'

# Raspberry Pi
alias pi='ssh pi@raspberrypi.local'
