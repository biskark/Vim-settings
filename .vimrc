" Basic Key Mappings -------------------- " {{{
noremap ; :
noremap : ;

inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap + <C-w>+
nnoremap _ <C-w>-
nnoremap Y y$

nnoremap j gj
nnoremap k gk
inoremap <c-f> <c-x><c-f>
inoremap <c-g> <space><bs>
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
noremap H ^
noremap L $
" }}}

" Basic Settings ----------------------- " {{{
syntax on
filetype on
filetype plugin on
filetype plugin indent on
execute pathogen#infect()

set background=dark
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

set wildmenu
set wildmode=list:longest,full
" }}}

" FileType Settings -------------------- " {{{
augroup filetype_js
    autocmd!
    autocmd BufRead,BufNewFile *.js set ft=javascript syntax=jquery
augroup END

augroup filetype_python
    autocmd!
    autocmd FileType python set tags=~/.vim/tags/python
    autocmd FileType python set omnifunc=pythoncomplete#Complete
augroup END

augroup filetype_html
    autocmd!
    autocmd FileType html set tabstop=2
    autocmd FileType html set softtabstop=2
    autocmd FileType html set shiftwidth=2
    autocmd FileType htmldjango set tabstop=2
    autocmd FileType htmldjango set softtabstop=2
    autocmd FileType htmldjango set shiftwidth=2
augroup END

augroup filetype_qtstyle
    autocmd BufRead,BufNewFile *.qss set ft=css syntax=css
    autocmd BufRead,BufNewFile *.qrc set ft=xml syntax=xml
augroup END

augroup filetype_cpp
    autocmd!
    autocmd FileType cpp set tags+=~/.vim/tags/qt4
augroup END

augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

augroup filetype_markdown
    autocmd!
    autocmd BufRead,BufNewFile *.md set ft=markdown syntax=markdown
augroup END
" }}}

" Plugin Settings ------------------------ " {{{
set laststatus=2
let g:tagbar_left  = 1
let g:tagbar_width = 25 
set rtp+=/home/Kevin/.local/lib/python2.7/site-packages/powerline/bindings/vim
let g:Powerline_symbols = 'fancy'

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

"Syntastic and Qt
let g:syntastic_check_on_open=1
let g:syntastic_cpp_include_dirs = ['/usr/include/qt4/', '/usr/include/qt4/QtCore/', '/usr/include/qt4/Qt/', '/usr/include/qt4/QtGui/', '/usr/include/qt4/QtUiTools/']

let OmniCPP_NamespaceSearch = 1
let OmniCPP_GlobalScopeSearch = 1
let OmniCPP_ShowAccess = 1
let OmniCPP_MayCompleteDot = 1
let OmniCPP_MayCompleteArrow = 1
let OmniCPP_MayCompleteScope = 1
let OmniCPP_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
" }}}

" Plugin Key Mappings --------------------- " {{{
cnoremap tree<cr>  NERDTreeToggle<cr>
cnoremap tag<cr>   TagbarToggle<cr>
cnoremap pause<cr> TagbarTogglePause<cr>
cnoremap buf<cr> TMiniBufExplorer<cr>

cnoremap vbash<cr> ConqueTermVSplit bash<cr>
cnoremap bash<cr> ConqueTermSplit bash<cr>
cnoremap vlynx<cr> ConqueTermVSplit lynx<cr>
cnoremap lynx<cr> ConqueTermSplit lynx<cr>
cnoremap vgoogle<cr> ConqueTermVSplit lynx google<cr>
cnoremap google<cr> ConqueTermSplit lynx google<cr>

" }}}

" Other Settings -------------------- " {{{
colorscheme wombat256mod
" }}}
