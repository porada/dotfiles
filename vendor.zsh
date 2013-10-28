VENDOR_PATH=$DOTFILES_PATH/vendor

# Initialize other plugins
source $VENDOR_PATH/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $VENDOR_PATH/zsh-history-substring-search/zsh-history-substring-search.zsh
source $VENDOR_PATH/z/z.sh
eval "$(rbenv init - --no-rehash)"
