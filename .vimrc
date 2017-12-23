set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'dahu/vim-fanfingtastic'
Plugin 'tpope/vim-unimpaired'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

" Highlight good jumps for fFtT
" Plugin 'unblevable/quick-scope'

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

" Don't use arrow keys for moving around
no <up> ddkP 
no <down> ddp
no <left> <Nop>
no <right> <Nop>
ino <up> <Nop>
ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>

set path+=**

set number

set textwidth=75
set incsearch hlsearch

set tabstop=2
set shiftwidth=2
set expandtab

map § :NERDTreeToggle<CR>

" Rewrap paragraph with Meta-q (as in emacs)
execute "set <M-q>=\eq"
map <M-q> gqap

" Go to tag with Meta-t
execute "set <M-t>=\et"
map <M-t> <C-]>

syntax enable
colo torte

let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

" Swedish bindings for unimpaired
nmap ö [
nmap ä ]
omap ö [
omap ä ]
xmap ö [
xmap ä ]

" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
