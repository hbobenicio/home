"""""""""""""""""""""""""
" General configurations "
""""""""""""""""""""""""""

set relativenumber
"set number

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set shiftround  
set smarttab    
set autoindent  
set copyindent 

" File specific configurations
autocmd FileType make setlocal noexpandtab

" vim-plug (https://github.com/junegunn/vim-plug)
call plug#begin('~/.vim/plugged')
  " vim-polyglot seems to be having problems with Java...
  Plug 'sheerun/vim-polyglot'

  Plug 'joshdick/onedark.vim'
  Plug 'itchyny/lightline.vim'
  let g:lightline = { 
      \   'colorscheme': 'onedark',
      \ }
  set laststatus=2
  set noshowmode
  
  Plug 'preservim/nerdtree'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } 
call plug#end()

colorscheme onedark
