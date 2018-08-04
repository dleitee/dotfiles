call plug#begin('~/.config/nvim/plugged')
Plug 'morhetz/gruvbox'
Plug 'w0rp/ale'
Plug 'tpope/vim-repeat'
Plug 'mileszs/ack.vim'
Plug 'kien/ctrlp.vim'
Plug 'sjl/gundo.vim'
Plug 'scrooloose/nerdtree'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ntpeters/vim-better-whitespace'
Plug 'joom/vim-commentary'
Plug 'svermeulen/vim-easyclip'
Plug 'airblade/vim-gitgutter'
Plug 'sheerun/vim-polyglot'
Plug 'othree/html5.vim'
Plug 'anyakichi/vim-surround'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'wakatime/vim-wakatime'
Plug 'tpope/vim-fugitive'

" Snippets
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
call plug#end()
