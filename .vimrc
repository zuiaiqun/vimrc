let mapleader=','

set nu
syntax on

"sets how many lines of history vim has to remember
set history=700

"fold
set foldmethod=indent

"set to auto read when a file is changed from the outside
set autoread

"always show current position
set ruler
set rulerformat=%20(%2*%<%f=\ %m%r\ %3l\ %c\ %p%%%)

"turn on the wild menu
set wildmenu

set backspace=2
set backspace=indent,eol,start whichwrap+=<,>,[,] 

"if mouse works
if has('mouse')
	set mouse=a
endif

set laststatus=2
"状态栏设置:文件名、当前列、当前相对位置
set statusline=%F%m%r%h%w\ [COL=%03v][%p%%]
set nocompatible
set autochdir

"no annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

set ignorecase
set showmatch
set shortmess=atI

"use spaces instead of tabs
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set lbr
set tw=500
set ai
set si
set wrap

"Toggle Menu and Toolbar
set guioptions-=T 
set guioptions-=m

set encoding=utf8
set ffs=unix,dos,mac
set fileencoding=utf8

"menu encoding
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

"consle encoding
language messages zh_CN.utf-8

set nobackup
set nowb
set noswapfile

set fdm=marker
"set autochdir

set linespace=0

set sessionoptions+=unix

colorscheme koehler
"set background=dark
"let g:solarized_termcolors=256

set hlsearch
set incsearch
set wrapscan


"font
"set guifont=Bitstream_Vera_Sans_Mono:h10:cANSI 
"set gfw=幼圆:h10.5:cGB2312

" vundle
if has("win32")
    set rtp+=$VIM/bundle/vundle
else
    set rtp+=~/.vim/bundle/Vundle.vim
endif
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'scrooloose/nerdtree'

Plugin 'fatih/vim-go'
"Plugin 'dgryski/vim-godef'

"Plugin 'Valloric/YouCompleteMe'

"lua check
"Plugin 'xolox/vim-misc'
"Plugin 'xolox/vim-lua-inspect'

"python check
Plugin 'kevinw/pyflakes-vim'

"vimscript
Plugin 'AutoClose'

Plugin 'AutoComplPop'

Plugin 'SuperTab'

Plugin 'vim-scripts/a.vim'
"Plugin 'vim-scripts/taglist.vim'


"md
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

"fold
Plugin 'jpythonfold.vim'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"nerdtree
map <leader>n :NERDTree<CR>
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"autocmd BufRead,BufNewFile *.{md,mdown,mkd,mkdn,markdown,mdwn}   set filetype=mkd 
autocmd BufRead,BufNewFile *.{go}   set filetype=go 
"autocmd BufRead,BufNewFile *.{py,pyc}   set filetype=py

"autocomplPop配置
let g:AutoComplPop_IgnoreCaseOption=1

"supertab doesnot support lua
"let g:SuperTabRetainCompletionType=2
"let g:SuperTabDefaultCompletionType="<C-X><C-O>" 

"TlistToggle
"let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Use_Right_Window=1


" Highlight for go
let g:go_disable_autoinstall = 0
let g:go_highlight_functions = 1  
let g:go_highlight_methods = 1  
let g:go_highlight_structs = 1  
let g:go_highlight_operators = 1  
let g:go_highlight_build_constraints = 1 

au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)
au FileType go nmap <Leader>e <Plug>(go-rename)

