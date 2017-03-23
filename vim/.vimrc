" dein settings

if &compatible
  set nocompatible
endif

let s:dein_dir = expand('~/.cache/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

if !isdirectory(s:dein_repo_dir)
  execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
endif

execute 'set runtimepath^=' . s:dein_repo_dir

if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)
  call dein#add('Shougo/vimproc.vim')
  call dein#add('Shougo/dein.vim')
  call dein#add('Shougo/neocomplete.vim')
  call dein#add('Shougo/vimshell.vim')
  call dein#add('Shougo/neosnippet')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('tpope/vim-surround.git')
  call dein#add('jacoborus/tender.vim')
  call dein#add('joker1007/vim-markdown-quote-syntax')
  call dein#add('itchyny/lightline.vim')
  call dein#add('airblade/vim-gitgutter')
  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

if dein#check_install()
  call dein#install()
endif

" vim settings

set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,utf-16,ucs2le,ucs-2,iso-2022-jp,euc-jp,sjis,cp932
set autoread
set number
set cursorline
set smartindent
set showmatch
set laststatus=2
set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch
set tabstop=2
set shiftwidth=2
set expandtab
set backspace=indent,eol,start
set paste

nmap <Esc><Esc> :nohlsearch<CR><Esc>

hi Comment ctermfg=DarkGray
autocmd FileType make setlocal noexpandtab
autocmd BufWritePre * :%s/\s\+$//ge

" for colorscheme
set background=dark
colorscheme tender

" show all hidden char
set list
set listchars=tab:»-
