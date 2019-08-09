call plug#begin('~/.config/nvim/plugged')
Plug 'yardnsm/vim-import-cost', { 'do': 'npm install' }
Plug 'joshdick/onedark.vim'
Plug 'mrk21/yaml-vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'w0rp/ale'
Plug 'tpope/vim-repeat'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
Plug 'mileszs/ack.vim'
Plug 'scrooloose/nerdtree'
Plug 'ntpeters/vim-better-whitespace'
Plug 'joom/vim-commentary'
Plug 'svermeulen/vim-easyclip'
Plug 'airblade/vim-gitgutter'
Plug 'sheerun/vim-polyglot'
Plug 'othree/html5.vim'
Plug 'anyakichi/vim-surround'
Plug 'sbdchd/neoformat'
Plug 'tpope/vim-fugitive'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'jiangmiao/auto-pairs'
Plug 'justinmk/vim-sneak'
call plug#end()
