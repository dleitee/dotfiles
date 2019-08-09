source ~/antigen.zsh

antigen use oh-my-zsh
export TERM="xterm-256color"
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh"  ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion"  ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion


# Path of my Virtual Envs
export WORKON_HOME=~/Envs
export VAULT_ADDR=https://vault.ckl.io
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export GDAL_LIBRARY_PATH="/Library/Frameworks/GDAL.framework/Versions/1.11/GDAL"
export GEOS_LIBRARY_PATH="/Library/Frameworks/GEOS.framework/Versions/3/GEOS"

export ZSH=~/.oh-my-zsh
export GIT=/usr/local/bin/git
export GIT_HOME=/usr/local/bin/git
export VIMRC=~/.config/nvim/init.vim
export ZSHRC=~/.zshrc

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completionThemes

# Setting fd as the default source for fzf
export FZF_DEFAULT_COMMAND='fd --type f'

# To apply the command to CTRL-T as well
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# Plugins"
antigen bundle git
antigen bundle brew
antigen bundle Tarrasch/zsh-autoenv
antigen bundle virtualenvwrapper
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle wbingli/zsh-wakatime
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found
antigen bundle zsh-users/zsh-completions

POWERLEVEL9K_INSTALLATION_PATH=$ANTIGEN_BUNDLES/bhilburn/powerlevel9k
POWERLEVEL9K_MODE='nerd-complete'
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(ssh dir vcs newline root_indicator)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status virtualenv pyenv ip)
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_CHRUBY_SHOW_VERSION=false
POWERLEVEL9K_CHRUBY_SHOW_ENGINE=false
POWERLEVEL9K_HOME_ICON=''
POWERLEVEL9K_HOME_SUB_ICON=''
POWERLEVEL9K_FOLDER_ICON=''
POWERLEVEL9K_ETC_ICON=''

antigen theme bhilburn/powerlevel9k powerlevel9k
#
# User configuration
export PATH=~/Library/Python/2.7/bin:$PATH
export PATH=~/Library/Python/3.6/bin:$PATH
export PATH=~/Library/Python/3.7/bin:$PATH
export PATH=~/.mozbuild/git-cinnabar:$PATH
export PATH="$HOME/.yarn/bin:$PATH"
export PATH="$HOME/.config/cljsh:$PATH"
export TERM=screen-256color
source $ZSH/oh-my-zsh.sh

# Editor
export EDITOR='nvim'

# ssh
export SSH_KEY_PATH="~/.ssh/dsa_id"

zstyle ':completion:*:*' ignored-patterns '*ORIG_HEAD'

alias g="git"
alias w="watson"
alias j="jrnl"
alias jl="jrnl -ls"
alias en="trans en:pt"
alias pt="trans pt-BR:en"
alias rs="find . -type f -name \".*.swp\" -exec rm -f {} \;"
alias vim="nvim"
alias :q="exit"
alias did="vim +'normal Go' +'r!date' ~/did.txt"
alias ctags="`brew --prefix`/bin/ctags -f ctags -R ."

# added by travis gem
[ -f /Users/danieloliveira/.travis/travis.sh ] && source /Users/danieloliveira/.travis/travis.sh

# # Enable powerline
# . /Users/danieloliveira/Library/Python/2.7/lib/python/site-packages/powerline/bindings/zsh/powerline.zsh

antigen apply

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export HOMEBREW_GITHUB_API_TOKEN=44aa7fe154dfbe2f84a3f205961c5e213233b1e6
export PATH="/usr/local/opt/openssl/bin:$PATH"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
source /usr/local/opt/powerlevel9k/powerlevel9k.zsh-theme
