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
  let g:base16_shell_path = "~/.bash/base16-shell"
  let base16colorspace=256  " Access colors present in 256 colorspace
  colorscheme base16-solarized

  if &term =~ 'screen-256color' && exists('$TMUX')
    " disable Background Color Erase (BCE) so that color schemes
    " render properly when inside 256-color tmux and GNU screen.
    " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
    set t_ut=
  endif

endif
" }}}
" Misc {{{
set backspace=indent,eol,start
set noesckeys                 " Get rid of the delay when hitting esc!
" }}}
" Digraphs {{{
digraphs .. 8230              " Add digraph for ellipsis (…) mapped to '..'
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
set listchars=tab:»\ ,trail:·  " display tabs as » and trailing spaces as ·
set lazyredraw                " redraw only when we need to
set modeline                  " always show modeline
set ttyfast
set shortmess=atI             " Don’t show the intro message when starting Vim
set scrolloff=7               " keep cursor line from the bottom of the window
set splitright                " Opens vertical split right of current window
set splitbelow                " Opens horizontal split below current window
set laststatus=2              " Always show status line of last window
" set noshowmode                " Don't show the default line, intead use Airline
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
nnoremap <leader>ev :tabe $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

" edit global todo list
map <Leader>n :tabe ~/todo.md<CR>

" edit global improvement / tool sharpening list
map <Leader>i :tabe ~/tool_sharpening.md<CR>

" Execute Dispatch for current file
map <Leader>d :w<CR>:Dispatch<CR>

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
  nmap <Leader>a: :Tabularize /:\zs/l1<CR>
  vmap <Leader>a{ :Tabularize /{<CR>
  nmap <Leader>a> :Tabularize /=><CR>
  nmap <Leader>a, :Tabularize /,\zs/l1<CR>
" endif
" }}}
" Custom Key Mappings {{{
" quickly open new tabs
nnoremap <C-W>e :tabe<cr>

map <F10> :NERDTreeFind<CR>
map  <F9> :NERDTreeFind<CR>

" Avoid using escape key
imap jj <Esc>

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
" NERD Tree {{{
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
" }}}
" Syntastic {{{
let g:syntastic_ignore_files = ['.java$']
"mark syntax errors with :signs
let g:syntastic_enable_signs=1
""automatically jump to the error when saving the file
let g:syntastic_auto_jump=0
"show the error list automatically
let g:syntastic_auto_loc_list=1
"don't care about warnings
let g:syntastic_quiet_messages = {'level': 'warnings'}
" }}}
" Ctrl-P {{{
let g:ctrlp_max_height = 20            " provide more space to display results
set wildignore+=tmp/cache/**,*.scssc,*.sassc " ignore tmp files and Sass caches

if executable('ag')
  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command =
    \ 'ag %s --files-with-matches -g "" --ignore "\.git$\|\.hg$\|\.svn$"'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

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

  " Make ?s part of words
  autocmd FileType ruby,eruby,yaml setlocal iskeyword+=?

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
augroup vimrcEx
  autocmd!

  " Open nerdtree if no args
  autocmd VimEnter * if !argc() | NERDTree | endif

  " Resize splits when the window is resized
  autocmd VimResized * :wincmd =

  " When editing a file, always jump to the last known cursor position.
  " Don't do it for commit messages, when the position is invalid, or when
  " inside an event handler (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if &ft != 'gitcommit' && line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

augroup END
" }}}

" vim:foldmethod=marker:foldlevel=0
