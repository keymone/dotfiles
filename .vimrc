set nocompatible
let mapleader=","

" < vundle and plugins >
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tomasr/molokai'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'xolox/vim-misc'
Plugin 'kien/ctrlp.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'Raimondi/delimitMate'
Plugin 'sheerun/vim-polyglot'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'rking/ag.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'bogado/file-line'

call vundle#end()

filetype plugin indent on

" < general >
syntax on
colorscheme molokai

set expandtab
set tabstop=2
set sw=2
set backspace=indent,eol,start
set ruler
set number
set showcmd
set incsearch
set hlsearch
set list
set listchars=tab:▸\ ,eol:¬
set expandtab
set fillchars+=vert:\│
set laststatus=2

" < airline >
let g:airline_detect_paste=1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" < nerdtree >
let g:nerdtree_tabs_open_on_console_startup = 0
nnoremap <Leader>o :NERDTreeToggle<CR>

" < git gutter >
hi clear SignColumn
let g:airline#extensions#hunks#non_zero_only = 1

" < delimitMate >
let delimitMate_expand_cr = 1
augroup mydelimitMate
  au!
  au FileType markdown let b:delimitMate_nesting_quotes = ["`"]+  au FileType tex let b:delimitMate_quotes = ""
  au FileType tex let b:delimitMate_quotes = ""
  au FileType tex let b:delimitMate_matchpairs = "(:),[:],{:},`:'"
  au FileType python let b:delimitMate_nesting_quotes = ['"', "'"]
augroup END

" < windows >
nnoremap <leader>j :wincmd j<cr>
nnoremap <leader>k :wincmd k<cr>
nnoremap <leader>l :wincmd w<cr>

" < buffers >
nnoremap <leader>n :bn<cr>
nnoremap <leader>b :bp<cr>
nmap ,d :b#<bar>bd#<CR>

" < ctrlp >
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif
nnoremap <Leader>p :CtrlP<CR>
nnoremap <Leader>. :CtrlPMRU<CR>

" < ag >
nnoremap <Leader>/ :Ag<space>

" < cursor shape in insert mode >
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif
