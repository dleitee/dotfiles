source ~/antigen.zsh

antigen use oh-my-zsh
export TERM="xterm-256color"

# Path of my Virtual Envs
export WORKON_HOME=~/Envs

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export GDAL_LIBRARY_PATH="/Library/Frameworks/GDAL.framework/Versions/1.11/GDAL"
export GEOS_LIBRARY_PATH="/Library/Frameworks/GEOS.framework/Versions/3/GEOS"

export ZSH=/Users/danieloliveira/.oh-my-zsh
export GIT=/usr/local/bin/git
export GIT_HOME=/usr/local/bin/git
export VIMRC=~/.config/nvim/init.vim
export ZSHRC=~/.zshrc


# Themes
antigen theme https://github.com/caiogondim/bullet-train-oh-my-zsh-theme bullet-train
BULLETTRAIN_PROMPT_ORDER=(
status
custom
context
dir
screen
perl
ruby
virtualenv
nvm
aws
go
rust
elixir
git
hg
cmd_exec_time)

BULLETTRAIN_VIRTUALENV_BG='yellow'
BULLETTRAIN_VIRTUALENV_FG='black'

# Plugins"
plugins=(git brew osx autoenv virtualenvwrapper zsh-autosuggestions zsh-wakatime autojump heroku pip lein command-not-found)

# User configuration
export PATH=~/Library/Python/2.7/bin:$PATH
export PATH=~/Library/Python/3.6/bin:$PATH
export PATH=~/Library/Python/3.7/bin:$PATH
export PATH="$HOME/.yarn/bin:$PATH"
export PATH="$HOME/.config/cljsh:$PATH"
export TERM=screen-256color
source $ZSH/oh-my-zsh.sh

# Editor
export EDITOR='vim'

# ssh
export SSH_KEY_PATH="~/.ssh/dsa_id"

zstyle ':completion:*:*' ignored-patterns '*ORIG_HEAD'

alias g="git"
alias en="trans en:pt"
alias pt="trans pt-BR:en"
alias runserver="python manage.py runserver"
alias pyshell="python manage.py shell_plus"
alias gsu="cd ~/_dev/singularity-directory-webapp/"
alias gob="cd ~/_dev/oceanner-backend/"
alias gof="cd ~/_dev/oceanner-frontend/"
alias gmf="cd ~/_dev/mediconahora"
alias gmb="cd ~/_dev/mediconahora-backend"
alias rswp="find . -type f -name \".*.swp\" -exec rm -f {} \;"
alias vim="nvim"
alias :q="exit"
alias start-su="tmux source-file ~/workspaces/su.sh"


# added by travis gem
[ -f /Users/danieloliveira/.travis/travis.sh ] && source /Users/danieloliveira/.travis/travis.sh

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# # Enable powerline
# . /Users/danieloliveira/Library/Python/2.7/lib/python/site-packages/powerline/bindings/zsh/powerline.zsh

antigen apply
