" Launch Config {{{
set nocompatible
execute pathogen#infect()
" }}}
" Colors {{{
syntax enable
set background=dark

if &t_Co < 256
  colorscheme bluegreen
else
  " use degrated 256 terminal colors
  let g:solarized_termcolors=256
  colorscheme solarized
endif
" }}}
" Misc {{{
set backspace=indent,eol,start
" }}}
" Spaces & Tabs {{{
set tabstop=2                 " number of visual spaces per TAB
set softtabstop=2             " number of spaces in TAB when editing
set shiftwidth=2
set expandtab                 " convert tab to spaces
set smarttab                  " smartly insert those tabs
set shiftround                " round shifts to a multiple of shiftwidth
" }}}
" UI Config {{{
set number                    " show line numbers
set nowrap                    " do not wrap long lines
set showcmd                   " display incomplete commands
set cursorline                " highlights row with cursor
" set cursorcolumn              " highlights column with the cursor
set title                     " change the terminal's title
set wildmenu                  " visual autocomplete for command menu
set wildignore=*.swp          " ignore swp files in completion
set list                      " show whitespace chars
set listchars=trail:·,tab:»\  " display tabs as » and trailing spaces as ·
set lazyredraw                " redraw only when we need to
set modeline                  " always show modeline
set ttyfast
set scrolloff=3               " keep cursor line from the bottom of the window
set splitright                " Opens vertical split right of current window
set splitbelow                " Opens horizontal split below current window
filetype plugin indent on     " load filetype-specific indent and plugin files

if exists('+colorcolumn')
  set colorcolumn=81
endif
" }}}
" Searching {{{
" }}}
" Folding {{{
set foldenable
set foldlevelstart=10   " open most folds by default to
set foldnestmax=10      " 10 nested fold max
" }}}
" Leader Shortcuts {{{
" open NerdTree
nnoremap <leader>b :NERDTreeFind<CR>

" edit vimrc and load vimrc bindings
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

" edit global todo list
map <Leader>n :vsp ~/todo.md<CR>

" Execute RSpec for current file
map <Leader>t :call RunCurrentSpecFile()<CR>
let g:rspec_command = "!bundle exec rspec {spec}"

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
" map <Leader>sv :RSview
map <Leader>su :RSunittest
map <Leader>sf :RSfunctionaltest
map <Leader>si :RSintegrationtest

" if exists(":Tabularize")
  nmap <Leader>a= :Tabularize /=<CR>
  vmap <Leader>a= :Tabularize /=<CR>
  nmap <Leader>a: :Tabularize /:\zs<CR>
  vmap <Leader>a: :Tabularize /:\zs<CR>
  vmap <Leader>a{ :Tabularize /{<CR>
  nmap <Leader>a{ :Tabularize /{<CR>
" endif
" }}}
" Custom Key Mappings {{{
" quickly open new tabs
nnoremap <C-W>e :tabe<cr>

map <F10> :NERDTreeFind<CR>
map  <F9> :NERDTreeFind<CR>

" Duplicated selected text using v_D
vmap D y'>p

" Remove trailing whitespace using F5
nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

" Common Command Typos
command! Q  quit    " converts ... :Q  => :q
command! W  write   " converts ... :W  => :w
command! Wq wq      " converts ... :Wq => :wq
command! Wn wn      " converts ... :Wn => :wn
command! WN wN      " converts ... :WN => :wN

" Ignore F1 (help)
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>
" }}}
" Syntastic {{{
let g:syntastic_ignore_files = ['.java$']
" }}}
" Dragvisuals {{{
vmap  <expr>  <LEFT>   DVB_Drag('left')
vmap  <expr>  <RIGHT>  DVB_Drag('right')
vmap  <expr>  <DOWN>   DVB_Drag('down')
vmap  <expr>  <UP>     DVB_Drag('up')
vmap  <expr>  D        DVB_Duplicate()
" }}}
" MacVim {{{
" }}}
" AutoGroups {{{
augroup configgroup
  autocmd!

  " Markdown specifics: enable spellchecking and hard wrap at 80 characters
  autocmd FileType markdown setlocal spell textwidth=80 complete+=kspell

  " Enable spellchecking for gitcommits
  autocmd FileType gitcommit setlocal spell complete+=kspell

  " Disable expandtab for php
  autocmd FileType php setlocal noexpandtab sw=2 ts=2

  " Use Ruby syntax on Arbre template files
  autocmd BufRead,BufNewFile *.arb setfiletype ruby

  " Use Ruby syntax on Capistrano files
  autocmd BufRead,BufNewFile *.cap setfiletype ruby

augroup END
" }}}
" Backups {{{
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup
" }}}
" Custom Commands {{{
" Highlight words to avoid in tech writing
" =======================================
"
"   obviously, basically, simply, of course, clearly,
"   just, everyone knows, However, So, easy
"
"   http://css-tricks.com/words-avoid-educational-writing/

highlight TechWordsToAvoid ctermbg=red ctermfg=white
match TechWordsToAvoid /\cobviously\|basically\|simply\|of\scourse\|clearly\|\(\W\|^\)\@<=just\(\W\)\@=\(\W\)\@<!\|everyone\sknows\|however\|so,\|easy/ 
" }}}

" vim:foldmethod=marker:foldlevel=0
