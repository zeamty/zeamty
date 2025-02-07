set nocompatible              " be iMproved, required
filetype off                  " required


""" bundle & plugin
"  " set the runtime path to include Vundle and initialize
"  set rtp+=~/.vim/bundle/Vundle.vim
"  call vundle#begin()
"  " alternatively, pass a path where Vundle should install plugins
"  "call vundle#begin('~/some/path/here')
"
"  " let Vundle manage Vundle, required
"  Plugin 'VundleVim/Vundle.vim'
"
"  " The following are examples of different formats supported.
"  " Keep Plugin commands between vundle#begin/end.
"  " plugin on GitHub repo
"  " Plugin 'tpope/vim-fugitive'
"  " plugin from http://vim-scripts.org/vim/scripts.html
"  " Plugin 'L9'
"  " Git plugin not hosted on GitHub
"  " Plugin 'git://git.wincent.com/command-t.git'
"  " git repos on your local machine (i.e. when working on your own plugin)
"  " Plugin 'file:///home/gmarik/path/to/plugin'
"  " The sparkup vim script is in a subdirectory of this repo called vim.
"  " Pass the path to set the runtimepath properly.
"  " Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"  " Install L9 and avoid a Naming conflict if you've already installed a
"  " different version somewhere else.
"  " Plugin 'ascenator/L9', {'name': 'newL9'}
"
"  "Plugin 'davidhalter/jedi-vim'
"  Plugin 'posva/vim-vue'
"
"  " All of your Plugins must be added before the following line
"  call vundle#end()            " required
"  filetype plugin indent on    " required
"  " To ignore plugin indent changes, instead use:
"  "filetype plugin on
"  "
"  " Brief help
"  " :PluginList       - lists configured plugins
"  " :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
"  " :PluginSearch foo - searches for foo; append `!` to refresh local cache
"  " :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"  "
"  " see :h vundle for more details or wiki for FAQ
"  " Put your non-Plugin stuff after this line
"
"  " flake8
"  " pep8: Style Guide for Python Code, https://www.python.org/dev/peps/pep-0008/
"  " mccabe: McCabe complexity, https://pypi.org/project/mccabe/
"  " frosted: checks Python source files for errors, https://pypi.org/project/frosted/
"  let g:PyFlakeCheckers = 'frosted'
"  "let g:PyFlakeCheckers = 'pep8,mccabe,frosted'
"
"  " https://pypi.org/project/frosted/#frosted-error-codes
"  let g:PyFlakeDisabledMessages = 'E101,E307,W101,E301,E103' " unused import/ unused var / bare except(try:...except:...) used / redefinition / ImportStarUsed
"  "
"  map <F6> :PyFlakeAuto<CR>
"
"  "let g:jedi#auto_initialization = 0

syntax on "关键字染色

set backspace=indent,eol,start

set nu
set ts=4
set sw=4
set expandtab
set ci "自动缩进

" F9开启set paste
set pastetoggle=<F9>

" normal模式下fi开启缩进折叠, zR: 打开所有折叠, zM: 关闭所有折叠
:nmap fi :set foldmethod=indent <cr>
"set foldmethod=indent

set hlsearch "搜索结果高亮

filetype indent on
" autocmd FileType python setlocal et sta sw=4 sts=4

" 文件模版
" autocmd BufNewFile *.py 0 r ~/.vim/vim_template/vim_python_header
" autocmd BufNewFile *.py :normal o
" autocmd BufNewFile *.py :normal j i
" autocmd BufNewFile *.py :normal :set foldmethod=indent
" autocmd BufNewFile *.php 0 r ~/.vim/vim_template/vim_php_header
" autocmd BufNewFile *.php :normal o
" autocmd BufNewFile *.php :normal j i

" 自动去除尾部空格
autocmd BufWritePre * %s/\s\+$//e

" 重启后撤销历史可用 persistent undo
set undofile
set undodir=/tmp/vim_undo_file
set undolevels=100 "maximum number of changes that can be undone

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
set hidden		" Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)
set mouse=

set maxmempattern=200000
