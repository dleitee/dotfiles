call plug#begin('~/.config/nvim/plugged')
Plug 'ervandew/supertab'
Plug 'morhetz/gruvbox'
Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
Plug 'google/vim-glaive'
Plug 'w0rp/ale'
Plug 'tpope/vim-repeat'
Plug 'mileszs/ack.vim'
Plug 'kien/ctrlp.vim'
Plug 'raimondi/delimitmate'
Plug 'sjl/gundo.vim'
Plug 'scrooloose/nerdtree'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ntpeters/vim-better-whitespace'
Plug 'joom/vim-commentary'
Plug 'svermeulen/vim-easyclip'
Plug 'airblade/vim-gitgutter'
Plug 'sheerun/vim-polyglot'
Plug 'anyakichi/vim-surround'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'flazz/vim-colorschemes'
Plug 'wakatime/vim-wakatime'
Plug 'tpope/vim-fugitive'

" Snippets
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
let g:deoplete#enable_at_startup = 1

Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'honza/vim-snippets'
call plug#end()

call glaive#Install()
