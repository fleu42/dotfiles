execute pathogen#infect()
colorscheme molokai
set background=dark

if has("syntax")
  syntax on
endif

" Only do this part when compiled with support for autocommands
if has("autocmd")
  " In text files, always limit the width of text to 80 characters
  autocmd BufRead *.txt set textwidth=80
  autocmd BufRead *.md set textwidth=80
  " When editing a file, always jump to the last cursor position
  autocmd BufReadPost *
  \ if line("'\"") > 0 && line ("'\"") <= line("$") |
  \   exe "normal! g'\"" |
  \ endif
  filetype plugin indent on
"  autocmd BufEnter *.txt let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

" Settings
if &t_Co > 2
	set t_Co=256
else
	set t_Co=16
endif

"set backup		" keep a backup file
set nocompatible	" Use Vim defaults (much better!)
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set viminfo='20,\"50	" viminfo file
set history=30		" keep 30 lines of command line history
set ruler		" show the cursor position all the time
set laststatus=2    " StatusLine
set showcmd         " Show (partial) command in status line.
set showmatch       " Show matching brackets.
set ignorecase      " Do case insensitive matching
set smartcase       " Do smart case matching
set incsearch       " Incremental search
set hlsearch            " Hilight during search
"set list
"set lcs:tab:>-,trail:.
set cindent
set smartindent
set autoindent
set softtabstop=4
set tabstop=4
set shiftwidth=4
set expandtab
"set cinkeys=0{,0},:,0#,!,!^F
set pastetoggle=<F11>
set visualbell
set confirm             " Ask if unsaved changes while quit
set hidden              " Hide buffers when they are abandoned
set wildmenu            " Better command-line completion
set wildmode=list:longest

" Mappings
if version >= 700
  map <F1> "<Esc>:! perldoc <cword><CR>"
  map <silent> <F3> "<Esc>:match ErrorMsg '\%>80v.\+'<CR>"
  map <silent> <F7> "<Esc>:silent setlocal spell! spelllang=fr<CR>"
  map <silent> <F8> "<Esc>:setl noai nocin nosi inde=<CR>"
  nmap j gj
  nmap k gk
  nnoremap <C-L> :nohl<CR><C-L>
  nnoremap Q <nop>
  nmap \q :nohlsearch<CR>
  vmap _c :s/^/#/gi<Enter>
  vmap _C :s/^#//gi<Enter>
  cnoremap <C-a>  <Home>
  cnoremap <C-b>  <Left>
  cnoremap <C-f>  <Right>
  cnoremap <C-d>  <Delete>
  cnoremap <M-b>  <S-Left>
  cnoremap <M-f>  <S-Right>
  cnoremap <M-d>  <S-right><Delete>
  cnoremap <Esc>b <S-Left>
  cnoremap <Esc>f <S-Right>
  cnoremap <Esc>d <S-right><Delete>
  cnoremap <C-g>  <C-c>
endif

" markdown
set nofoldenable

" for perl
"au BufNewFile *.pl 0put = \"#!/usr/bin/env perl\<nl>#\<nl>use strict;\<nl>use warnings;\<nl>\"|$|start!
"autocmd FileType perl "set number set textwidth=81
"let perl_extended_vars = 1

" Misc
" Hilight the chars over 80
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/
