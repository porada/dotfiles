## Setup

```sh
# Trigger the prompt to install developer tools
git --version

# Clone the dotfiles via HTTPS to avoid authentication errors
git clone https://github.com/porada/dotfiles.git ~/.dotfiles

# Make sure all dependencies are in place
~/.dotfiles/bin/dotfiles-dependencies

# Initialize the dotfiles and make sure everything is up to date
~/.dotfiles/bin/dotfiles-init
~/.dotfiles/bin/dotfiles-upgrade

# Once SSH has been set up, replace the remote path to the repository
git --git-dir ~/.dotfiles/.git remote set-url origin git@github.com:porada/dotfiles
```

## Quick Links

- [`brew`](https://brew.sh)
- [`fisher`](https://github.com/jorgebucaran/fisher)
- [`ssh`](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)
- [`vim-plug`](https://github.com/junegunn/vim-plug)
