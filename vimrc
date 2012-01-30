set nocompatible

call pathogen#infect()

set backspace=2
set background=dark
set autoindent
set nowrap
set modeline
set number    " show line numbers
set showcmd   " display incomplete commands

set tabstop=2
set shiftwidth=2
set expandtab

set wildignore=*.swp
set nobackup
set title     " change the terminal's title

filetype plugin indent on
syntax on

set background=dark

if &t_Co < 256
  colorscheme bluegreen
else
  let g:solarized_termcolors=256
  colorscheme solarized
endif

" Common Command Typos
command! Q  quit    " converts ... :Q  => :q
command! W  write   " converts ... :W  => :w
command! Wq wq      " converts ... :Wq => :wq
command! Wn wn      " converts ... :Wn => :wn
command! WN wN      " converts ... :WN => :wN

" Remove trailing whitespace using F5
nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>:retab<CR>

" Open NERDTree
map <F10> :NERDTreeFind<CR>

" Ignore F1 (help)
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" Duplicated selected text using v_D
vmap D y'>p

" Leader shortcuts for Rails commands
map <Leader>m :Rmodel
map <Leader>c :Rcontroller
map <Leader>v :Rview
map <Leader>u :Runittest
map <Leader>f :Rfunctionaltest
map <Leader>i :Rintegrationtest
map <Leader>h :Rhelper
map <Leader>tm :RTmodel
map <Leader>tc :RTcontroller
map <Leader>tv :RTview
map <Leader>tu :RTunittest
map <Leader>tf :RTfunctionaltest
map <Leader>sm :RSmodel
map <Leader>sc :RScontroller
map <Leader>sv :RSview
map <Leader>su :RSunittest
map <Leader>sf :RSfunctionaltest
map <Leader>si :RSintegrationtest
