set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
"Plugin 'ascenator/L9', {'name': 'newL9'}

" Vim script library
Plugin 'L9'
" Git wrapper
Plugin 'tpope/vim-fugitive'
" improvements for file explorer, netrw
"Plugin 'tpope/vim-vinegar'
" Fuzzy file search
Plugin 'wincent/command-t'
" Coffeescript highlighting
Plugin 'kchmck/vim-coffee-script'
" Slim highlighting
Plugin 'slim-template/vim-slim.git'
" C magic
Plugin 'c.vim'
" base16 colortheme
"Plugin 'chriskempson/base16-vim'
" highlighting for tmux.conf file
Plugin 'tmux-plugins/vim-tmux'
" vue.js single file components (multi-language) highlighting
Plugin 'posva/vim-vue'


" All of your Plugins must be added before the following line
call vundle#end()            " required
"filetype plugin indent on    " required
filetype off                 " necessary to make ftdetect work on Linux
syntax on
filetype on                  " Enable filetype detection
filetype indent on           " Enable filetype-specific indenting / req'd by vundle
filetype plugin on           " Enable filetype-specific plugins  / req'd by vundle
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
"

"colorscheme base16-default-dark
"set term=screen-256color     " fix tmux colouring
set expandtab
set shiftwidth=2
set softtabstop=2
set smartindent              " intelligent auto-indenting
"set foldmethod=indent       " fold/collapse indent block
"set foldlevel=1
"set foldclose=all
set colorcolumn=80           " vertical bar
set number                   " line numbers

set incsearch                " incremental searching
set ignorecase               " case insensitive searching
set smartcase                " intelligent casing for searches
"set hlsearch                 " highlight searches

set history=50               " keep 50 lines of command line history
set autoread                 " auto read when file is changed from outside

set list listchars=tab:»·,trail:·

"Remove all trailing whitespace by pressing F5
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

if has("autocmd")
  autocmd Filetype javascript setlocal ts=4 sts=4 sw=4
  au Filetype c,cpp setlocal cindent
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
