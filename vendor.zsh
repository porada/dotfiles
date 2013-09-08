VENDOR_PATH=$DOTFILES_PATH/vendor

# Load oh-my-zsh
ZSH=$VENDOR_PATH/oh-my-zsh
ZSH_THEME='macovsky'
DISABLE_AUTO_UPDATE='true'
source $ZSH/oh-my-zsh.sh

# Initialize other plugins
source $VENDOR_PATH/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $VENDOR_PATH/zsh-history-substring-search/zsh-history-substring-search.zsh
source $VENDOR_PATH/z/z.sh
eval "$(rbenv init - --no-rehash)"
