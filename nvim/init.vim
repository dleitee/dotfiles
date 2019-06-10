"""""""""""""""""""""""""""""""""""""
" => Plugins settings
"""""""""""""""""""""""""""""""""""""
source ~/.config/nvim/plugins.vim

"""""""""""""""""""""""""""""""""""""
" => Schema and colors
"""""""""""""""""""""""""""""""""""""
syntax on

colors dracula
set termguicolors
colorscheme onedark
set background=dark
set mouse=a
let g:onedark_terminal_italics=1
let g:onedark_termcolors=256
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

let g:ale_cursor_detail = 0
nmap <silent> <C-up> <Plug>(ale_previous_wrap)
nmap <silent> <C-down> <Plug>(ale_next_wrap)

"""""""""""""""""""""""""""""""""""""
" => General Settings
"""""""""""""""""""""""""""""""""""""
let mapleader=","

set tags+=ctags
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

" exit from Terminal mode using ESC
:tnoremap <Esc> <C-\><C-n>

set invlist
set list
set listchars=tab:¦\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_leadingSpaceChar = '·'

set viminfo="20,<1000,s1000"
let g:gitgutter_max_signs=10000

let g:ack_default_options = " -s -H --nopager --nocolor --column"

" autocomplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#auto_complete_delay = 100

" use tab instdead
inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" :
\ <SID>check_back_space() ? "\<TAB>" :
\ deoplete#mappings#manual_complete()
function! s:check_back_space() abort "{{{
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
endfunction"}}}

" completion delay
call deoplete#custom#option({
\ 'auto_complete_delay': 10,
\ })

"
"""""""""""""""""""""""""""""""""""""
" => Shortcuts
"""""""""""""""""""""""""""""""""""""
nnoremap <C-a> ggVG
nnoremap gm m

let g:Lf_CommandMap = {'<C-K>': ['<Up>'], '<C-J>': ['<Down>']}
let g:Lf_ShortcutF = '<C-p>'
"""""""""""""""""""""""""""""""""""""
" => Code format
"""""""""""""""""""""""""""""""""""""
set relativenumber
set number
set showcmd
set cursorline
set showmatch
set colorcolumn=100
let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
filetype plugin indent on

set ai
set si
set backspace=2
set nowrap
set tabstop=2
set expandtab
set shiftwidth=2
set softtabstop=2


" backup
set noswapfile
set nowritebackup
set nobackup

" Remove trailling spaces
autocmd BufWritePre * %s/\s\+$//e

augroup fmt
  autocmd!
  autocmd BufWritePre * undojoin | Neoformat
augroup END

let g:neoformat_enabled_python = ['autopep8']
let g:neoformat_enabled_javascript = ['prettier']
let g:neoformat_enabled_css = ['prettier']
let g:neoformat_enabled_scss = ['prettier']
let g:neoformat_enabled_json = ['prettier']
let g:neoformat_enabled_markdown = ['prettier']
let g:neoformat_enabled_html = ['html-beautify']

"""""""""""""""""""""""""""""""""""""
" => Folding Settings
"""""""""""""""""""""""""""""""""""""
set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent

" space open/closes folds
nnoremap = za


"""""""""""""""""""""""""""""""""""""
" => Javascript Environment
"""""""""""""""""""""""""""""""""""""
let g:jsx_ext_required = 0
let g:user_emmet_jsx = 1
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1


"""""""""""""""""""""""""""""""""""""
" => Markdown Environment
"""""""""""""""""""""""""""""""""""""
let g:vim_markdown_conceal = 0

au BufRead,BufNewFile *.ejs set filetype=html
au BufRead,BufNewFile *.scss set filetype=css
au BufRead,BufNewFile .babelrc set filetype=json

" add yaml stuffs
au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml foldmethod=indent
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
"""""""""""""""""""""""""""""""""""""
" => Clipboard Settings
"""""""""""""""""""""""""""""""""""""
set clipboard=unnamed
let g:EasyClipAutoFormat = 1
let g:EasyClipUsePasteToggleDefaults = 0

nmap <c-f> <plug>EasyClipSwapPasteForward
nmap <c-d> <plug>EasyClipSwapPasteBackwards
nmap <silent> gs <plug>SubstituteOverMotionMap
nmap gss <plug>SubstituteLine
xmap gs <plug>XEasyClipPaste

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
" => Buffer Settings
"""""""""""""""""""""""""""""""""""""
"
" Move to the next buffer
nmap <leader>l :bnext<CR>

" Move to the previous buffer
nmap <leader>h :bprevious<CR>


"""""""""""""""""""""""""""""""""""""
" => gUndo Settings
"""""""""""""""""""""""""""""""""""""
nnoremap <leader>u :GundoToggle<CR>


"""""""""""""""""""""""""""""""""""""
" => NERDTree Settings
"""""""""""""""""""""""""""""""""""""
map <C-b> :NERDTreeToggle<CR>
nmap <leader>b :NERDTreeFind<CR>
let g:NERDTreeIgnore=['\~$', 'node_modules', '.git', 'dist', '\.next']
let NERDTreeShowHidden=1


"""""""""""""""""""""""""""""""""""""
" => GitGutter Settings
"""""""""""""""""""""""""""""""""""""
set updatetime=250
let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0


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
ab target= target="_blank" rel="noopener noreferrer"


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

"
"""""""""""""""""""""""""""""""""""""
" => GIT
"""""""""""""""""""""""""""""""""""""
autocmd Filetype gitcommit setlocal spell textwidth=72


" neosnippet
""" neosnippet settings
" Plugin key-mappings.
imap <C-e>     <Plug>(neosnippet_expand_or_jump)
smap <C-e>     <Plug>(neosnippet_expand_or_jump)
xmap <C-e>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

" Enable snipMate compatibility feature.
let g:neosnippet#enable_snipmate_compatibility = 1

" Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory='~/.config/nvim/snippets'
let g:neosnippet#disable_runtime_snippets = {
\   '_' : 1,
\ }


let g:sneak#label = 1
nnoremap <silent> s :<C-U>call sneak#wrap('',           3, 0, 2, 1)<CR>
nnoremap <silent> S :<C-U>call sneak#wrap('',           3, 1, 2, 1)<CR>
xnoremap <silent> s :<C-U>call sneak#wrap(visualmode(), 3, 0, 2, 1)<CR>
xnoremap <silent> S :<C-U>call sneak#wrap(visualmode(), 3, 1, 2, 1)<CR>
onoremap <silent> s :<C-U>call sneak#wrap(v:operator,   3, 0, 2, 1)<CR>
onoremap <silent> S :<C-U>call sneak#wrap(v:operator,   3, 1, 2, 1)<CR>


" Automatically replaces

