"""""""""""""""""""""""""""""""""""""
" => Plugins settings
"""""""""""""""""""""""""""""""""""""
source ~/.config/nvim/plugins.vim

"""""""""""""""""""""""""""""""""""""
" => Schema and colors
"""""""""""""""""""""""""""""""""""""
syntax enable

colorscheme gruvbox
set background=dark
let g:airline_theme='gruvbox'
let g:airline#extensions#obsession#enabled = 1
let g:airline#extensions#fugitiveline#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#ale#enabled = 1

"""""""""""""""""""""""""""""""""""""
" => General Settings
"""""""""""""""""""""""""""""""""""""
let mapleader=","

set wildmenu
set lazyredraw

set incsearch
set hlsearch

" remove arrow keys
nnoremap <up> <PageUp>
nnoremap <down> <PageDown>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

"move vertically by visual line
nnoremap j gj
nnoremap k gk

" move to beginning/end of line
nnoremap B ^
nnoremap E $

set invlist
set list
set listchars=tab:¦\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_leadingSpaceChar = '·'

set viminfo="20,<1000,s1000"
let g:gitgutter_max_signs=10000

let g:ack_default_options = " -s -H --nopager --nocolor --column"

let g:deoplete#enable_at_startup = 1

"""""""""""""""""""""""""""""""""""""
" => Shortcuts
"""""""""""""""""""""""""""""""""""""
nnoremap <C-a> ggVG


"""""""""""""""""""""""""""""""""""""
" => JSON Environment
"""""""""""""""""""""""""""""""""""""
au BufRead,BufNewFile *.json set filetype=json
let g:vim_json_syntax_conceal = 0


"""""""""""""""""""""""""""""""""""""
" => Code format
"""""""""""""""""""""""""""""""""""""
set relativenumber
set number
set showcmd
set cursorline
set showmatch

filetype plugin indent on

set ai
set si
set backspace=2
set nowrap
set tabstop=2
set expandtab
set shiftwidth=2
set softtabstop=2

" Remove trailling spaces
autocmd BufWritePre * %s/\s\+$//e

" Autoformat Settings
augroup autoformat_settings
	autocmd FileType bzl AutoFormatBuffer buildifier
	autocmd FileType c,cpp,proto AutoFormatBuffer clang-format
	autocmd FileType gn AutoFormatBuffer gn
	autocmd FileType python AutoFormatBuffer autopep8
augroup END

" Prettier Settings
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.json,*.css,*.scss,*.less,*.graphql PrettierAsync


"""""""""""""""""""""""""""""""""""""
" => Folding Settings
"""""""""""""""""""""""""""""""""""""
set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent

" space open/closes folds
" nnoremap <space> za


"""""""""""""""""""""""""""""""""""""
" => Javascript Environment
"""""""""""""""""""""""""""""""""""""
let g:jsx_ext_required = 0
let g:user_emmet_jsx = 1
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1

nnoremap <leader>rf :JsAnonFnToArrowFn<cr>



"""""""""""""""""""""""""""""""""""""
" => Markdown Environment
"""""""""""""""""""""""""""""""""""""
let g:vim_markdown_conceal = 0

au BufRead,BufNewFile *.ejs set filetype=html
au BufRead,BufNewFile *.scss set filetype=css

"""""""""""""""""""""""""""""""""""""
" => Clipboard Settings
"""""""""""""""""""""""""""""""""""""
set clipboard=unnamed
let g:EasyClipAutoFormat = 1
let g:EasyClipUsePasteToggleDefaults = 0

nmap <c-f> <plug>EasyClipSwapPasteForward
nmap <c-d> <plug>EasyClipSwapPasteBackwards

set pastetoggle=<F2>


"""""""""""""""""""""""""""""""""""""
" => Split and Tabs Commands
"""""""""""""""""""""""""""""""""""""
" split resize commands
nnoremap <C-l> :vertical resize +5<CR>
nnoremap <C-h> :vertical resize -5<CR>
nnoremap <C-j> :resize -5<CR>
nnoremap <C-k> :resize +5<CR>

" change tabs
nnoremap <right> gt
nnoremap <left> gT

" Normal mode
nnoremap ∆ :m .+1<CR>== "<ALT-j
nnoremap ˚ :m .-2<CR>== "<ALT-k>

" Insert mode
inoremap ∆ <ESC>:m .+1<CR>==gi
inoremap ˚ <ESC>:m .-2<CR>==gi

" Visual mode
vnoremap ∆ :m '>+1<CR>gv=gv
vnoremap ˚ :m '<-2<CR>gv=gv


"""""""""""""""""""""""""""""""""""""
" => gUndo Settings
"""""""""""""""""""""""""""""""""""""
nnoremap <leader>u :GundoToggle<CR>


"""""""""""""""""""""""""""""""""""""
" => CTRL-P Settings
"""""""""""""""""""""""""""""""""""""
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden --ignore-dir ".git" --ignore-dir ".next" -g ""'


"""""""""""""""""""""""""""""""""""""
" => NERDTree Settings
"""""""""""""""""""""""""""""""""""""
map <C-n> :NERDTreeToggle<CR>
nmap <leader>n :NERDTreeFind<CR>
let g:NERDTreeIgnore=['\~$', 'vendor', 'node_modules', '.git', 'dist', '.next']
let NERDTreeShowHidden=1


"""""""""""""""""""""""""""""""""""""
" => GitGutter Settings
"""""""""""""""""""""""""""""""""""""
set updatetime=250
let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0

"
"""""""""""""""""""""""""""""""""""""
" => ClojureScript Config
"""""""""""""""""""""""""""""""""""""
let g:tslime_always_current_session = 1
let g:tslime_always_current_window = 1

vmap <C-c><C-c> <Plug>SendSelectionToTmux
nmap <C-c><C-c> <Plug>NormalModeSendToTmux
nmap <C-c>r <Plug>SetTmuxVars

" Evaluate Clojure buffers on load
autocmd BufRead *.clj try | silent! Require | catch /^Fireplace/ | endtry


"""""""""""""""""""""""""""""""""""""
" => General bindings
"""""""""""""""""""""""""""""""""""""
nnoremap <leader>ev :vsp $VIMRC<CR>
nnoremap <leader>ez :vsp $ZSHRC<CR>
nnoremap <leader>ep :vsp ~/.config/nvim/plugins.vim<CR>
nnoremap <leader>sv :source $VIMRC<CR>
nnoremap <leader>sz :source $ZSHRC<CR>
nnoremap <leader>sp :source ~/.config/nvim/plugins.vim<CR>

nnoremap <leader>a :Ack!<Space>
:command! WQ wq
:command! Wq wq
:command! W w
:command! Q q
:command! Qa qa
:command! QA qa

" replace all occurrences of word
nnoremap <Leader>s :%s/\<<C-r><C-w>\>/


"""""""""""""""""""""""""""""""""""""
" => Aliases
"""""""""""""""""""""""""""""""""""""
ab target target="_blank" rel="noopener noreferrer"


"""""""""""""""""""""""""""""""""""""
" => Functions
"""""""""""""""""""""""""""""""""""""
" Zoom / Restore window.
function! s:ZoomToggle() abort
    if exists('t:zoomed') && t:zoomed
        execute t:zoom_winrestcmd
        let t:zoomed = 0
    else
        let t:zoom_winrestcmd = winrestcmd()
        resize
        vertical resize
        let t:zoomed = 1
    endif
endfunction
command! ZoomToggle call s:ZoomToggle()
nnoremap <silent> <C-z> :ZoomToggle<CR>

"""""""""""""""""""""""""""""""""""""
" => Snippets
"""""""""""""""""""""""""""""""""""""

imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif
" Enable snipMate compatibility feature.
let g:neosnippet#enable_snipmate_compatibility = 1

" Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory='~/.config/nvim/snippets'
