# Set locale variables to prevent possible encoding issues
export LANG='en_US'
export LC_ALL='en_US.UTF-8'

# Make nano the default editor
export EDITOR='nano'

# Don’t clear the screen after quitting a manual page
export MANPAGER='less -X'

# Manage paths
CURRENT_PATH=`dirname $0`
VENDOR_PATH=$CURRENT_PATH/vendor
export PATH=$CURRENT_PATH/bin:$PATH

# Loading oh-my-zsh
ZSH=$VENDOR_PATH/oh-my-zsh
ZSH_THEME='macovsky'
DISABLE_AUTO_UPDATE='true'
source $ZSH/oh-my-zsh.sh

# Loading plugins
source $VENDOR_PATH/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $VENDOR_PATH/zsh-history-substring-search/zsh-history-substring-search.zsh
source $VENDOR_PATH/z/z.sh

# Loading aliases
source $CURRENT_PATH/aliases.zsh
