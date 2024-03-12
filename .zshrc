source /usr/share/zsh-antigen/antigen.zsh
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
antigen use oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
antigen theme agnoster

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git

# Vi-mode bundle
antigen bundle jeffreytse/zsh-vi-mode

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Autosuggestions
antigen bundle zsh-users/zsh-autosuggestions

antigen apply

ZVM_VI_HIGHLIGHT_FOREGROUND=#C8C093          # Hex value
ZVM_VI_HIGHLIGHT_BACKGROUND=#2D4F67          # Hex value
ZVM_VI_HIGHLIGHT_EXTRASTYLE=bold,underline    # bold and underline

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vim'
else
    export EDITOR='mvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

alias odoo-bin="python3 ~/Documents/repo/odoo/odoo-bin"
alias oe-support="~/Documents/repo/support-tools/oe-support.py"
alias clean-database="~/Documents/repo/support-tools/clean_database.py"
alias mailhog="~/go/bin/MailHog"
alias odoo-bin-start="~/Documents/script/odoo-bin-start.bash"
alias git-switch-all="~/Documents/script/git-switch-all.bash"
alias py-spy-odoo="~/Documents/script/py-spy.bash"
alias git-status-all="~/Documents/script/git-status-all.bash"
alias odoo-bin-test="~/Documents/script/odoo-test.bash"
alias memray-odoo="~/Documents/script/memray.bash"
alias lnav-color="~/Documents/script/lnav-256color.bash"

export PATH=$PATH:/home/odoo/.spicetify
. "$HOME/.cargo/env"
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/go/bin:$PATH

export XDG_RUNTIME_DIR="/run/user/1000"

[ "$TERM" = "xterm-kitty" ] && alias ssh="kitty +kitten ssh"
