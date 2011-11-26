set number
set nocompatible
set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2
set autoindent
set foldmethod=indent
set smartindent
set smarttab
set title
set history=50
set hidden
set showcmd
set hlsearch
set incsearch
set nocompatible
set wildmenu
set wildmode=list:longest,full
set showmatch
set cursorline
set linebreak
set incsearch
set ignorecase
set smartcase
filetype plugin on
let python_highlight_all=1
filetype indent on
set visualbell

set mouse=a
set backspace=indent,eol,start

if has("autocmd")
  augroup phpfiles

autocmd BufRead,BufNewFile *.php,*.module,*.theme,*.inc,*.install,*.info,*.engine,*.profile,*.test set filetype=php

augroup END
endif

syntax on

"dump tmp files in central location
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

"Add PHPDocs to vim
source ~/.vim/php-doc.vim 
inoremap <C-P> <ESC>:call PhpDocSingle()<CR>i 
nnoremap <C-P> :call PhpDocSingle()<CR> 
vnoremap <C-P> :call PhpDocRange()<CR> 
nmap <F8>:TagbarToggle<CR>
