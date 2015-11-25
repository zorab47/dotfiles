" Launch Config {{{
set encoding=utf-8
scriptencoding utf-8

set nocompatible

call plug#begin()

Plug 'Keithbsmiley/investigate.vim'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'NLKNguyen/papercolor-theme'
Plug 'airblade/vim-gitgutter'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'arecarn/crunch.vim'
Plug 'arecarn/selection.vim'
Plug 'bling/vim-airline'
Plug 'bogado/file-line'
Plug 'chrisbra/vim-diff-enhanced'
Plug 'chriskempson/base16-shell'
Plug 'chriskempson/base16-vim'
Plug 'christoomey/vim-titlecase'
Plug 'christoomey/vim-tmux-navigator'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'drmikehenry/vim-fontsize'
Plug 'ecomba/vim-ruby-refactoring'
Plug 'gabebw/vim-spec-runner'
Plug 'garbas/vim-snipmate'
Plug 'godlygeek/tabular'
Plug 'honza/vim-snippets'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/vim-peekaboo'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-line'
Plug 'kana/vim-textobj-user'
Plug 'kchmck/vim-coffee-script'
Plug 'ktonga/vim-follow-my-lead'
Plug 'miyakogi/conoline.vim'
Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'noahfrederick/vim-hemisu'
Plug 'noahfrederick/vim-noctu'
Plug 'pangloss/vim-javascript'
Plug 'pbrisbin/vim-mkdir'
Plug 'plasticboy/vim-markdown'
Plug 'reedes/vim-pencil'
Plug 'reedes/vim-wordy'
Plug 'rking/ag.vim'
Plug 'scrooloose/syntastic'
Plug 'thomwiggers/vim-colors-solarized'
Plug 'thoughtbot/vim-rspec'
Plug 'tomtom/tlib_vim'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-git'
Plug 'tpope/vim-haml'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-ragtag'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-tbone'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-vinegar'
Plug 'vim-ruby/vim-ruby'
Plug 'vim-scripts/renumber.vim'
Plug 'zaiste/tmux.vim'
Plug 'zorab47/vim-gams'
Plug 'vim-scripts/sql.vim--Stinson'

call plug#end()

" }}}
" Colors {{{
syntax enable
set background=dark

if &t_Co < 256
  colorscheme bluegreen
else
  let g:base16_shell_path = "~/.bash/base16-shell"
  let base16colorspace=256  " Access colors present in 256 colorspace
  colorscheme base16-eighties

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
set timeoutlen=500
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
set ttyfast                   " Send more characters for redraws
set shortmess=atI             " Don’t show the intro message when starting Vim
set cmdheight=2               " more room to display messages
set scrolloff=10              " keep cursor line from the bottom of the window
set sidescrolloff=15          " keep cursor line from the bottom of the window
set sidescroll=1              " keep cursor line from the bottom of the window
set splitright                " Opens vertical split right of current window
set splitbelow                " Opens horizontal split below current window
set laststatus=2              " Always show status line of last window
set showmode                  " Show current mode in the modeline
set ruler                     " Show line and column number
filetype plugin indent on     " load filetype-specific indent and plugin files

set mouse=a                   " enable mouse

if exists('+colorcolumn')
  set colorcolumn=81          " highlight column 81 for text alignment
endif
" }}}
" Searching {{{
set gdefault                  " add the `g` flag to search/replace by default
" }}}
" Folding {{{
set foldenable
set foldlevelstart=10   " open most folds by default to
set foldnestmax=10      " 10 nested fold max
" }}}
" Leader Shortcuts {{{
" open NerdTree
nnoremap <leader>b :NERDTreeFind<CR>

" edit vimrc and reload vimrc - mnemonic: (e)dit(v)imrc, (r)eload(v)imrc
nnoremap <leader>ev :tabe $MYVIMRC<CR>
nnoremap <leader>rv :source $MYVIMRC<CR>

" edit global todo list
map <Leader>n :tabe ~/todo.md<CR>

" edit global improvement / tool sharpening list
map <Leader>i :tabe ~/tool_sharpening.md<CR>

" Execute Dispatch for current file
map <Leader>d :w<CR>:Dispatch<CR>

" Execute RSpec for current file
map <Leader>t :w<CR>:call RunCurrentSpecFile()<CR>
map <Leader>s :w<CR>:call RunNearestSpec()<CR>
map <Leader>l :w<CR>:call RunLastSpec()<CR>
map <Leader>as :w<CR>:call RunAllSpecs()<CR>
let g:rspec_command = "Dispatch rspec {spec}"

" Paste from system clipboard
map <Leader>p :set paste<CR>o<ESC>"+]p:set nopaste<CR>

" Edit snippets - mnemonic: (e)dit(s)nippets
map <Leader>es :tabe ~/.vim/bundle/vim-snippets/snippets/ruby.snippets<CR>

" Yank to system clipboard
map <Leader>y "+y

nnoremap <leader>fw :FixLastSpellingError<CR>

" TODO
" copy current filename into system clipboard - mnemonic: (c)urrent(f)ilename
" this is helpful to paste someone the path you're looking at
nnoremap <silent> <Leader>cf :let @* = expand("%:~")<CR>
nnoremap <silent> <Leader>cn :let @* = expand("%:t")<CR>

" Leader shortcuts for Rails commands
" map <Leader>m :Rmodel
" map <Leader>c :Rcontroller
" map <Leader>v :Rview
" map <Leader>u :Runittest
" map <Leader>f :Rfunctionaltest
" map <Leader>i :Rintegrationtest
" map <Leader>h :Rhelper
" map <Leader>tm :RTmodel
" map <Leader>tc :RTcontroller
" map <Leader>tv :RTview
" map <Leader>tu :RTunittest
" map <Leader>tf :RTfunctionaltest
" map <Leader>sm :RSmodel
" map <Leader>sc :RScontroller
" map <Leader>sv :RSview
" map <Leader>su :RSunittest
" map <Leader>sf :RSfunctionaltest
" map <Leader>si :RSintegrationtest

map <Leader>sc :RVschema<space>
map <Leader>ag :tabe<CR>:Ag<space>
" }}}
" Abbreviations {{{
ab zaa ActiveAdmin

" Date abbr: 2014-10-30
ab <expr> zda strftime("%Y-%m-%d")

" Date and time abbr: 2014-10-30 10:00
ab <expr> zdt strftime("%Y-%m-%d %H:%M:%S")

" }}}
" Custom Key Mappings {{{
" quickly open new tabs
nnoremap <C-W>e :tabe<cr>

map <F10> :NERDTreeFind<CR>
map  <F9> :NERDTreeFind<CR>

" Avoid using escape key
imap jj <Esc>
imap jk <Esc>

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

" Plugin Configs
" --------------

" Tabularize {{{
" if exists(":Tabularize")
" mnemonic: (a)lign

  " Ruby
  " align "=" but not "<=", "==", or "=>".
  nmap <Leader>a= :Tabularize /[^<=]\@<=\(=\)[=>]\@!/<CR>
  vmap <Leader>a= :Tabularize /[^<=]\@<=\(=\)[=>]\@!/<CR>

  " align ":" but not "::"
  nmap <Leader>a: :Tabularize /[^:]\@<=:\zs\(:\)\@!<CR>
  vmap <Leader>a: :Tabularize /[^:]\@<=:\zs\(:\)\@!<CR>

  nmap <Leader>a{ :Tabularize /[^#]\@<={<CR>
  vmap <Leader>a{ :Tabularize /[^#]\@<={<CR>
  nmap <Leader>a> :Tabularize /=><CR>
  vmap <Leader>a> :Tabularize /=><CR>
  nmap <Leader>a, :Tabularize /,\zs/l1r0<CR>
  vmap <Leader>a, :Tabularize /,\zs/l1r0<CR>

  " hash keys (a)lign (k)eys
  nmap <Leader>ak :Tabularize /\w\+:[:]\@!<CR>
  vmap <Leader>ak :Tabularize /\w\+:[:]\@!<CR>

  " R script
  nmap <Leader>a< :Tabularize /<-<CR>
  vmap <Leader>a< :Tabularize /<-<CR>

  " GAMS align on periods
  nmap <Leader>a. :Tabularize /[^0-9]\@<=\.<CR>
  vmap <Leader>a. :Tabularize /[^0-9]\@<=\.<CR>

  nmap <Leader>aw :Tabularize whitespace<CR>
  vmap <Leader>aw :Tabularize whitespace<CR>

  call plug#load('tabular')
  AddTabularPattern! whitespace / \+\zs/l1r0

  " Align ruby blocks, but ignore string interpolation
  AddTabularPattern! ruby_block /[^#]\@<={/

" endif
" }}}
" NERD Tree {{{
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
" }}}
" Syntastic {{{
let g:syntastic_ignore_files = ['.java$']

" mark syntax errors with :signs
let g:syntastic_enable_signs=1

" automatically jump to the error when saving the file
let g:syntastic_auto_jump=0

" show the error list automatically
let g:syntastic_auto_loc_list=0

" don't care about warnings
" let g:syntastic_quiet_messages = {'level': 'warnings'}

" configure syntastic syntax checking to check on open as well as save
let g:syntastic_check_on_open=1

let g:syntastic_check_on_wq = 0

" let g:syntastic_ruby_checkers = ['rubylint', 'mri']
" }}}
" Ctrl-P {{{
let g:ctrlp_max_height = 20            " provide more space to display results
set wildignore+=tmp/cache/**,*.scssc,*.sassc " ignore tmp files and Sass caches

if executable('ag')
  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s --files-with-matches -g "" --nocolor --hidden'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" }}}
" Airline {{{

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" Use unicode character separators instead of patched fonts for portability
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.linenr = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''

" }}}
" Invetigate.vim {{{
let g:investigate_command_for_ruby="^i!ri --format ansi ^s"
" }}}
" AutoGroups {{{
augroup vimrc
  autocmd!

  " Markdown specifics: enable spellchecking and hard wrap at 80 characters
  autocmd FileType markdown setlocal spell nolist textwidth=80 complete+=kspell
  autocmd FileType mkd      setlocal spell nolist textwidth=80 complete+=kspell

  " Enable spellchecking for gitcommits
  autocmd FileType gitcommit setlocal spell complete+=kspell

  " Disable expandtab for php
  autocmd FileType php setlocal noexpandtab sw=2 ts=2

  " Use hash as R comment string
  autocmd FileType r set commentstring=#\ %s

  " Doing entries as markdown
  autocmd BufRead /tmp/doing* setfiletype markdown

  " Allow stylesheets to autocomplete hyphenated words
  autocmd FileType css,scss,sass setlocal iskeyword+=-

  " Use Ruby syntax on Arbre template files
  autocmd BufRead,BufNewFile *.arb setfiletype ruby

  " Use Ruby syntax on Capistrano files
  autocmd BufRead,BufNewFile *.cap setfiletype ruby

  " Setup vim-dispatch for RSpec files
  autocmd BufRead,BufNewFile *_spec.rb let g:dispatch = 'rspec %'

  " Make ?s part of words
  autocmd FileType ruby,eruby,yaml setlocal iskeyword+=?

  autocmd ColorScheme * highlight clear SignColumn

  autocmd Filetype coffee map <buffer> <Leader>t :!teaspoon<CR>
  autocmd Filetype php    map <buffer> <Leader>t :!phpunit --colors %<CR>
  autocmd Filetype qf     setlocal nolist wrap
augroup END

" }}}
" Titlecase {{{
  let g:titlecase_map_keys = 0
  nmap <leader>gt <Plug>Titlecase
  vmap <leader>gt <Plug>Titlecase
  nmap <leader>gT <Plug>TitlecaseLine
" }}}
" Conoline {{{
let g:conoline_use_colorscheme_default_normal=1
let g:conoline_use_colorscheme_default_insert=1
" }}}

" Backups {{{
set nobackup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
" set writebackup
" }}}
" Custom Commands {{{
augroup vimrcEx
  autocmd!

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
