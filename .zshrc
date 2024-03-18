#up-line-or-historyup-line-or-history If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
ZSH_DISABLE_COMPFIX="true"
export ZSH=$HOME/.oh-my-zsh
export CPPFLAGS="-I/usr/local/opt/openjdk/include"
path+="$HOME/.composer/vendor/bin"
. $HOME/.oh-my-zsh/custom/plugins/zsh-z/zsh-z.plugin.zsh

export PATH

PATH="$PATH:$(ruby -e 'puts Gem.user_dir')/bin"
source $(dirname $(gem which colorls))/tab_complete.sh
KEYTIMEOUT=1

# Set SSH_AUTH_SOCK to use 1Password as SSH Agent when not ssh'd in remotely.
export SSH_AUTH_SOCK=~/Library/Group\ Containers/2BUA8C4S2C.com.1password/t/agent.sock

eval $(thefuck --alias)

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="spaceship"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting zsh-vim-mode)

eval "$(zoxide init zsh)"

#SPACESHIP
SPACESHIP_PROMPT_ADD_NEWLINE="true"
SPACESHIP_CHAR_SYMBOL=" \uf0e7"
SPACESHIP_CHAR_PREFIX=" \uf296"
SPACESHIP_CHAR_SUFFIX=(" ")
SPACESHIP_CHAR_COLOR_SUCCESS="yellow"
SPACESHIP_PROMPT_DEFAULT_PREFIX="$USER"
SPACESHIP_PROMPT_FIRST_PREFIX_SHOW="true"
SPACESHIP_USER_SHOW="true"

bindkey -r "^K"
bindkey -r "^J"

alias ls=colorls — tree — light
alias lc=colorls — tree — light
alias v="nvim"
alias no="node"
alias cl="clear"
alias s="sudo"
alias r="ranger"
alias labelimage="python3 ~/labelImg/labelImg.py"
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME"
alias gamer='sh $HOME/work/goodgameas/dev.sh'
alias sqlpipe='./$HOME/sqlpipe'

alias s='./vendor/bin/sail'
alias sa='./vendor/bin/sail artisan'
alias sad='./vendor/bin/sail artisan db'
alias sat='./vendor/bin/sail artisan tinker'

alias a='php artisan'
alias ad='php artisan db'
alias at='php artisan tinker'

# alias prisma='yarn prisma'
alias dc='docker-compose'
alias dmix='docker-compose run web mix'
alias simulator='open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app'
alias lir="./work/personal/receipts/labelimg.sh"
alias p="pnpm"
# alias python='python3'

source $ZSH/oh-my-zsh.sh

# Ssh connections
alias grom='ssh -A eilif@gromguten.gamer.no'
alias hannibal='ssh -A eilif@hannibal.gamer.no'
alias roy='ssh -A eilif@roy.gamer.no'
alias vold='ssh -A eilif@sersjantvold.gamer.no'
alias skafte='ssh -A eilif@csgo2.gamer.no'
alias fiffus='ssh -A eilif@csgo3.gamer.no'

alias adminbox='ssh -A eilif@admin.gamer.c.bitbit.net'


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export EDITOR="/usr/local/bin/nvim"
export VISUAL="/usr/local/bin/nvim"
export ZK_NOTEBOOK_DIR="$HOME/zk"
# export TERMINAL=/usr/local/opt/a
# export BROWSER=/usr/local/opt/bra
export PATH="/usr/local/sbin:$PATH"

alias php7c="/usr/local/Cellar/php@7.4/7.4.33_1/bin/php /usr/local/bin/composer"
alias php7="/usr/local/Cellar/php@7.4/7.4.33_1/bin/php"
#
alias php73c="/usr/local/Cellar/php@7.3/7.3.33_1/bin/php /usr/local/bin/composer"
alias php73="/usr/local/Cellar/php@7.3/7.3.33_1/bin/php"
#
alias php8="/usr/local/Cellar/php@8.0/8.0.13/bin/php"
alias php8c="/usr/local/Cellar/php@8.0/8.0.13/bin/php /usr/local/bin/composer"

alias php81="/usr/local/Cellar/php@8.0/8.0.13/bin/php"
alias php81c="/usr/local/Cellar/php@8.0/8.0.13/bin/php"
#
alias php72c="/usr/local/Cellar/php@7.2/7.2.34_4/bin/php /usr/local/bin/composer"
alias php72="/usr/local/Cellar/php@7.2/7.2.34_4/bin/php"
#
alias php53="$HOME/php-custom/bin/php -c $HOME/php-custom/lib/php.ini"

alias phpunit="./vendor/bin/phpunit"
alias testbench="./vendor/bin/testbench"
alias tbt="./vendor/bin/testbench package:test"

alias py="python3"

alias beak="/Users/eilifakerjordet/work/goodgameas/development/beak"

# pnpm
export PNPM_HOME="/Users/eilifakerjordet/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

export PATH="/usr/local/opt/openjdk/bin:$PATH"
