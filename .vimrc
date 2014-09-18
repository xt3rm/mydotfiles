set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree' 
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'sjl/gundo.vim'

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

augroup vimrc_autocmds
    autocmd!
    " Hightlight characters past column 120
    autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
    autocmd FileType python match Excess /\%120v.*/
    augroup END

syntax enable
set background=light
let g:solarized_termcolors=256
autocmd BufEnter * colorscheme hybrid   
autocmd BufEnter *.txt colorscheme solarized  
autocmd BufEnter *.py colorscheme pychimp  
autocmd BufEnter *.java colorscheme jellybeans  
autocmd BufEnter *.html colorscheme desert 

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Powerline setup
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
set laststatus=2

" Mapping for NerdTree
let g:NERDTreeDirArrows=0
map <F2> :NERDTreeToggle<CR>

" Mapping for gundo
nnoremap <F5> :GundoToggle<CR>

" Text Formatting/Layout {
    set expandtab
    set formatoptions=rq
    set nowrap
    set ignorecase
    set infercase
    set smartcase
    set nosmartindent
    set softtabstop=4 " when hitting tab or backspace, how many spaces
                      " should a tab be (see expandtab)
    set tabstop=4
    set backspace=indent,eol,start
"}
