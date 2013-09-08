if command -v brew > /dev/null 2>&1; then
  PATH="`brew --prefix`/share/npm/bin:$PATH"
fi

PATH="/usr/local/sbin:$PATH"
PATH="/usr/local/bin:$PATH"
export PATH="$DOTFILES_PATH/bin:$PATH"
