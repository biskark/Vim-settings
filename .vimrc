" Basic Settings ----------------------- " {{{
set guioptions-=T
set nocompatible
syntax on
filetype on
filetype plugin on
filetype plugin indent on

set nowrap
set autoindent
set number
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set backspace=indent,eol,start
set ofu=syntaxcomplete#Complete
set hlsearch
set incsearch
set modeline

set tags=tags;/
set cc=80
set shiftround
set history=1000
set undolevels=1000
set fileencodings=utf-8
set encoding=utf-8
set t_Co=256
set nrformats=
set title
set foldmethod=indent
set hidden
set linebreak
set splitbelow
set splitright
set completeopt+=longest,menuone
set noswapfile
set backupdir+=~/.vim/backup
set noshowmode
set scrolloff=2

set wildmenu
set wildmode=list:longest,full
" }}}

" Basic Key Mappings -------------------- " {{{
noremap ; :
noremap : ;

inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap  <C-h> <C-w>h
nnoremap  <C-j> <C-w>j
nnoremap  <C-k> <C-w>k
nnoremap  <C-l> <C-w>l
nnoremap  + <C-w>+
nnoremap  _ <C-w>-
nnoremap Y y$

nnoremap j gj
nnoremap k gk
inoremap <c-f> <c-x><c-f>
inoremap <c-g> <space><bs>  " for use after <c-f> to continue the match"
nnoremap <silent> <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <silent> <leader>sv :source $MYVIMRC<cr>
noremap H ^
noremap L $

" Append semi-colon to line;
nnoremap <silent> <leader>ss mqA;<esc>`q
vnoremap <silent> <leader>ss mq:s/$/;/<cr>`q
" Append colon to line;
nnoremap <silent> <leader>cc mqA:<esc>`q
vnoremap <silent> <leader>cc mq:s/$/:/<cr>`q
" Append { to line;
nnoremap <silent> <leader>{{ mqA {<esc>`q
vnoremap <silent> <leader>{{ mq:s/$/ {/<cr>`q

" Match trailing whitespace or turn off match
nnoremap <leader>w mq :match Error /\v\s+$/<cr>`q
nnoremap <leader>W mq :match Error //<cr>`q

" Erase match
nnoremap <silent> <leader>h :noh<cr>

" }}}

" FileType Settings -------------------- " {{{
augroup filetype_js
    autocmd!
    autocmd BufEnter *.js silent setlocal ft=javascript syntax=jquery
augroup END

augroup filetype_python
    autocmd!
    autocmd BufEnter *.py silent setlocal tags+=~/.vim/tags/python
    autocmd BufEnter *.py silent setlocal omnifunc=pythoncomplete#Complete
augroup END

augroup filetype_java
    autocmd!
    autocmd BufEnter * if &ft==# 'java' | silent setlocal tags+=~/.vim/tags/java | endif
    autocmd BufEnter * if &ft==# 'java' | silent setlocal omnifunc=javacomplete#Complete | endif
    autocmd BufEnter * if &ft==# 'java' | silent setlocal completefunc=javacomplete#CompleteParamsInfo | endif
augroup END

augroup filetype_html
    autocmd!
    autocmd BufEnter *.html silent setlocal tabstop=2
    autocmd BufEnter *.html silent setlocal softtabstop=2
    autocmd BufEnter *.html silent setlocal shiftwidth=2
augroup END

augroup filetype_qtstyle
    autocmd BufEnter *.qss silent setlocal ft=css syntax=css
    autocmd BufEnter *.qrc silent setlocal ft=xml syntax=xml
augroup END

augroup filetype_cpp
    autocmd!
    autocmd BufEnter * if &ft==# 'cpp' | silent setlocal tags+=~/.vim/tags/qt4 | endif
augroup END

augroup filetype_vim
    autocmd!
    autocmd BufEnter * if &ft==# 'vim' | silent setlocal foldmethod=marker | endif
augroup END
" }}}

" Plugin Settings ------------------------ " {{{
execute pathogen#infect()
execute pathogen#helptags()

let g:neocomplcache_enable_at_startup = 1

set laststatus=2
let g:tagbar_left  = 1
let g:tagbar_width = 25 
let g:Powerline_symbols = 'fancy'
" let g:Powerline_colorscheme = 'solarized256'

if !has('gui_running')
    let g:solarized_termcolors=256
endif

let g:UltiSnipsUsePythonVersion = 2
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

let g:miniBufExplSplitBelow=0
let g:SuperTabLongestEnhanced = 1 
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabClosePreviewOnPopupClose = 1

let NERDTreeStatusline    = 1
let NERDTreeShowHidden    = 1
let NERDChristmasTree     = 1
let NERDTreeShowBookmarks = 1

let g:ConqueTerm_TERM = 'xterm'
let g:ConqueTerm_PyVersion = 2

let g:pymode_lint_cwindow = 0

" Vim-Ultimate-Colorscheme-Utility
let g:ulti_color_always_random = 2
let g:ulti_color_excluded = ['minibufexpl', 'help', 'nerdtree', 'tagbar']

"Syntastic and Qt
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_cpp_include_dirs = ['/usr/include/qt4/', '/usr/include/qt4/QtCore/', '/usr/include/qt4/Qt/', '/usr/include/qt4/QtGui/', '/usr/include/qt4/QtUiTools/']
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_compiler_options = ' -std=c++0x'

let OmniCPP_NamespaceSearch = 2
let OmniCPP_GlobalScopeSearch = 1
let OmniCPP_ShowAccess = 1
let OmniCPP_MayCompleteDot = 1
let OmniCPP_MayCompleteArrow = 1
let OmniCPP_MayCompleteScope = 1
" }}}

" Plugin Key Mappings --------------------- " {{{
cnoremap <silent> tree<cr> NERDTreeToggle<cr>
cnoremap <silent> tag<cr> TagbarToggle<cr>
cnoremap <silent> pause<cr> TagbarTogglePause<cr>
cnoremap <silent> buf<cr> TMiniBufExplorer<cr>

cnoremap <silent> vbash<cr> ConqueTermVSplit bash<cr>
cnoremap <silent> bash<cr> ConqueTermSplit bash<cr>
cnoremap <silent> vlynx<cr> ConqueTermVSplit lynx<cr>
cnoremap <silent> lynx<cr> ConqueTermSplit lynx<cr>
cnoremap <silent> vgoogle<cr> ConqueTermVSplit lynx google<cr>
cnoremap <silent> google<cr> ConqueTermSplit lynx google<cr>

" Setting to automatically open a markdown file in rendered html.
" Must have grip and conqueterm installed
cnoremap <silent> grip<cr> call <SID>Grip()<cr>

" Function that calls grip on the current file, opens up firefox, and returns.
" Odd problem in that it returns to insert mode afterwards.
function! s:Grip()
    execute ':ConqueTermSplit grip ' . expand("%")
    sleep 1
    execute ':! firefox localhost:5000'
    execute ':q'
endfunction

" }}}   

" Other Settings -------------------- " {{{
" }}}   
