```sh
# Clone the dotfiles
git clone git@github.com:porada/dotfiles ~/.dotfiles

# Use the following in case of authentication errors
# git clone https://github.com/porada/dotfiles.git ~/.dotfiles

# Make sure all dependencies are in place
~/.dotfiles/bin/dependencies

# Symlink the dotfiles
~/.dotfiles/bin/dotfiles-init

# Make sure everything is up to date
~/.dotfiles/bin/upgrade
```
