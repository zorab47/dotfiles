" Launch Config {{{

if !has('vim_starting')
  set encoding=utf-8
  scriptencoding utf-8
endif

set nocompatible

call plug#begin()

Plug 'AndrewRadev/splitjoin.vim'
Plug 'Keithbsmiley/investigate.vim'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'airblade/vim-gitgutter'
Plug 'arecarn/crunch.vim'
Plug 'arecarn/selection.vim'
" Plug 'bling/vim-airline'
Plug 'bogado/file-line'
Plug 'chrisbra/vim-diff-enhanced'
Plug 'christoomey/vim-sort-motion'
Plug 'christoomey/vim-system-copy'
Plug 'christoomey/vim-titlecase'
Plug 'christoomey/vim-tmux-navigator'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'dag/vim-fish', { 'for': 'fish' }
Plug 'drmikehenry/vim-fontsize'
Plug 'ecomba/vim-ruby-refactoring', { 'for': 'ruby' }
Plug 'edsono/vim-matchit'
Plug 'garbas/vim-snipmate'
Plug 'godlygeek/tabular'
Plug 'honza/vim-snippets'
Plug 'itchyny/lightline.vim'
Plug 'jcfaria/Vim-R-plugin', { 'for': 'r' }
Plug 'joker1007/vim-markdown-quote-syntax', { 'for': 'markdown' }
Plug 'joker1007/vim-ruby-heredoc-syntax', { 'for': 'ruby' }
Plug 'junegunn/goyo.vim'
Plug 'junegunn/gv.vim'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/vim-peekaboo'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-line'
Plug 'kana/vim-textobj-user'
Plug 'kchmck/vim-coffee-script', { 'for': ['coffee', 'ruby'] }
Plug 'klen/python-mode',     { 'for': 'python' }
Plug 'ktonga/vim-follow-my-lead'
Plug 'nelstrom/vim-textobj-rubyblock', { 'for': 'ruby' }
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'pbrisbin/vim-mkdir'
Plug 'plasticboy/vim-markdown', { 'for': ['markdown', 'gitcommit'] }
Plug 'reedes/vim-pencil'
Plug 'reedes/vim-wordy'
Plug 'rhysd/devdocs.vim'
Plug 'rking/ag.vim'
Plug 'scrooloose/syntastic'
Plug 'shmup/vim-sql-syntax', { 'for': 'sql' }
Plug 'thoughtbot/vim-rspec', { 'for': 'ruby' }
Plug 'tmux-plugins/vim-tmux'
Plug 'tomtom/tlib_vim'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-git'
Plug 'tpope/vim-haml',     { 'for': 'haml' }
Plug 'tpope/vim-markdown', { 'for': ['markdown', 'gitcommit'] }
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-ragtag'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-tbone'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-vinegar'
Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
Plug 'vim-scripts/renumber.vim'
Plug 'xiaogaozi/easy-gitlab.vim'
Plug 'zorab47/vim-gams', { 'for': 'gams' }

" Color schemes
Plug 'AlessandroYorba/Alduin'
Plug 'NLKNguyen/papercolor-theme'
Plug 'junegunn/seoul256.vim'
Plug 'morhetz/gruvbox'
Plug 'nanotech/jellybeans.vim'
Plug 'noahfrederick/vim-hemisu'
Plug 'thomwiggers/vim-colors-solarized'
Plug 'sjl/badwolf'

call plug#end()
" }}}
" Colors {{{

" ┏━╸┏━┓╻  ┏━┓┏━┓┏━┓
" ┃  ┃ ┃┃  ┃ ┃┣┳┛┗━┓
" ┗━╸┗━┛┗━╸┗━┛╹┗╸┗━┛

if has("nvim")
  set termguicolors           " Make use of 24-bit colors
endif

syntax enable
set background=dark

if &t_Co >= 256
  " let g:base16_shell_path = "~/.bash/base16-shell"
  " let base16colorspace=256  " Access colors present in 256 colorspace
  " colorscheme base16-colors

  " Eighties
  " colorscheme base16-eighties

  let g:solarized_termcolors = 256
  let g:solarized_degrade = 1

  " Seoul
  let g:seoul256_background = 235
  let g:seoul256_light_background = 256
  colorscheme seoul256

  " if &term =~ 'screen-256color' && exists('$TMUX')
  "   " disable Background Color Erase (BCE) so that color schemes
  "   " render properly when inside 256-color tmux and GNU screen.
  "   " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
  "   set t_ut=
  " endif
else
  colorscheme default
endif
" }}}
" Misc {{{
set backspace=indent,eol,start
set timeoutlen=500
" }}}
" Digraphs {{{
digraphs .. 8230              " Ellipsis  (…) mapped to '..'
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
" set cursorline                " highlights row with cursor
" set cursorcolumn              " highlights column with the cursor
set title                     " change the terminal's title
set wildmenu                  " visual autocomplete for command menu
set wildignore=*.swp          " ignore swp files in completion
set list                      " show whitespace chars
set listchars=tab:»\ ,trail:· " display tabs as » and trailing spaces as ·
set lazyredraw                " redraw only when we need to
set modeline                  " always show modeline
set shortmess=atIToO          " Don’t show the intro message when starting Vim
set cmdheight=1               " more room to display messages
set scrolloff=10              " keep cursor line from the bottom of the window
set sidescrolloff=15          " keep cursor from the side of the window
set sidescroll=1              " minimum number of columns to scroll horizontally
set splitright                " Opens vertical split right of current window
set splitbelow                " Opens horizontal split below current window
set laststatus=2              " Always show status line of last window
set noshowmode                " Show current mode in the modeline
set ruler                     " Show line and column number
filetype plugin indent on     " load filetype-specific indent and plugin files

if !has('nvim')
  set ttyfast                 " Send more characters for redraws
endif

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

let mapleader=' '       " Space for leader key instead of the default: \

" edit vimrc and reload vimrc - mnemonic: (e)dit(v)imrc, (r)eload(v)imrc
nnoremap <leader>ev :tabe $MYVIMRC<CR>
nnoremap <leader>rv :source $MYVIMRC<CR>

" Tmux Write
map <Leader>w :Twrite<CR>

" edit global todo list
map <Leader>n :tabe ~/todo.md<CR>

" edit global improvement / tool sharpening list
" map <Leader>i :tabe ~/tool_sharpening.md<CR>

" Execute Dispatch for current file
set shell=/bin/bash               " required for Dispatch in the fish shell
map <Leader>d :w<CR>:Dispatch<CR>

" Execute RSpec for current file
map <Leader>t :w<CR>:call RunCurrentSpecFile()<CR>
map <Leader>s :w<CR>:call RunNearestSpec()<CR>
map <Leader>l :w<CR>:call RunLastSpec()<CR>
map <Leader>as :w<CR>:call RunAllSpecs()<CR>
let g:rspec_command = "Dispatch bundle exec rspec {spec}"

" Edit snippets - mnemonic: (e)dit(s)nippets
map <Leader>es :tabe ~/.vim/bundle/vim-snippets/snippets/ruby.snippets<CR>

nnoremap <leader>fw :FixLastSpellingError<CR>

" Paste from system clipboard
map <Leader>p :set paste<CR>o<ESC>"+p:set nopaste<CR>

" Yank to system clipboard
map <Leader>y "+y

" copy current filename into system clipboard - mnemonic: (c)urrent(f)ilename
" this is helpful to paste someone the path you're looking at
nnoremap <silent> <Leader>cf :let @+ = expand("%:~")<CR>
nnoremap <silent> <Leader>cn :let @+ = expand("%:t")<CR>

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

" Visual select; then `glo` to do a Gitlab Open
let g:easy_gitlab_url = 'https://git.orm-tech.com'

let g:goyo_width = 82
function! s:goyo_enter()
  silent !tmux set status off
  silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z
  set noshowmode
  set noshowcmd
  set scrolloff=999
  Limelight
endfunction

function! s:goyo_leave()
  silent !tmux set status on
  silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z
  set showmode
  set showcmd
  set scrolloff=5
  Limelight!
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

" Slime
let g:slime_target = "tmux"
let g:slime_default_config = {"socket_name": "default", "target_pane": "1.1"}

" Tabularize {{{
call plug#load('tabular')
if exists(":Tabularize")
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

  " (a)lign ruby (p)roc literals
  nmap <Leader>ap :Tabularize /-><CR>
  vmap <Leader>ap :Tabularize /-><CR>

  " Markdown
  nmap <Leader>a\| :Tabularize /\|<CR>
  vmap <Leader>a\| :Tabularize /\|<CR>

  " R script
  nmap <Leader>a< :Tabularize /<-<CR>
  vmap <Leader>a< :Tabularize /<-<CR>

  " GAMS align on periods
  nmap <Leader>a. :Tabularize /[^0-9]\@<=\.<CR>
  vmap <Leader>a. :Tabularize /[^0-9]\@<=\.<CR>

  nmap <Leader>aw :Tabularize whitespace<CR>
  vmap <Leader>aw :Tabularize whitespace<CR>

  " Align on whitespace
  AddTabularPattern! whitespace / \+\zs/l1r0

  " Align ruby blocks, but ignore string interpolation
  AddTabularPattern! ruby_block /[^#]\@<={/

endif
" }}}
" Syntastic {{{
let g:syntastic_ignore_files = ['.java$']

let g:syntastic_auto_jump     = 0      " don't auto jump to the error when saving the file
let g:syntastic_auto_loc_list = 0      " show the error list automatically
let g:syntastic_check_on_open = 1      " check syntax on open too
let g:syntastic_check_on_wq   = 0      " skip syntax check when writing and quitting
let g:syntastic_enable_signs  = 1      " mark syntax errors with :signs

" let g:syntastic_quiet_messages = {'level': 'warnings'} " don't care about warnings
" let g:syntastic_ruby_checkers = ['rubylint', 'mri']
" }}}
" Ctrl-P {{{
let g:ctrlp_mruf_max = 250             " track recently used files
let g:ctrlp_max_height = 20            " provide more space to display results
let g:ctrlp_switch_buffer = ''         " don't try to switch buffers
set wildignore+=tmp/cache/**,*.scssc,*.sassc " ignore tmp files and Sass caches

if executable('ag')
  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s --files-with-matches -g "" --nocolor --hidden'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif
" }}}
" Splitjoin {{{
let g:splitjoin_normalize_whitespace=1
let g:splitjoin_align=1
" }}}
" Lightline {{{
source $HOME/.vim/lightline.vim
" }}}
" Investigate.vim {{{
let g:investigate_command_for_ruby="^i!ri --format ansi ^s"
" }}}
" AutoGroups {{{
augroup vimrc
  autocmd!

  " Only display cursor line in active buffer
  autocmd BufWinEnter,WinEnter * setlocal cursorline
  autocmd BufWinLeave,WinLeave * setlocal nocursorline

  autocmd BufWinEnter,WinEnter * setlocal cursorcolumn
  autocmd BufWinLeave,WinLeave * setlocal nocursorcolumn

  " Only display reference column in active buffer
  autocmd BufWinEnter,WinEnter * setlocal colorcolumn=81
  autocmd BufWinLeave,WinLeave * setlocal colorcolumn=0

  " Auto source vimrc on change
  autocmd BufWritePost $MYVIMRC nested source $MYVIMRC

  " Markdown specifics: enable spellchecking and hard wrap at 80 characters
  autocmd FileType markdown setlocal spell nolist textwidth=80 complete+=kspell
  autocmd FileType mkd      setlocal spell nolist textwidth=80 complete+=kspell

  " Enable spellchecking for gitcommits
  autocmd FileType gitcommit setlocal spell complete+=kspell

  " Disable expandtab for php
  autocmd FileType php setlocal noexpandtab sw=2 ts=2

  " Use # as R comment string
  autocmd FileType r set commentstring=#\ %s

  " Use -- as SQL comment string
  autocmd FileType sql set commentstring=--\ %s

  " jrnl entries as markdown
  autocmd BufRead /tmp/jrnl* setlocal filetype=markdown sidescrolloff=0

  " Allow stylesheets to autocomplete hyphenated words
  autocmd FileType css,scss,sass setlocal iskeyword+=-

  autocmd FileType json set formatprg=python\ -mjson.tool

  " Use Ruby syntax on Arbre template files
  autocmd BufRead,BufNewFile *.arb set filetype=ruby

  " Use Ruby syntax on Capistrano files
  autocmd BufRead,BufNewFile *.cap set filetype=ruby

  " Setup vim-dispatch for RSpec files
  autocmd BufRead,BufNewFile *_spec.rb let g:dispatch = 'rspec %'

  " Make ?s part of words
  autocmd FileType ruby,eruby,yaml setlocal iskeyword+=?

  autocmd FileType c,cpp,rust,haskell,python,ruby nmap <buffer>K <Plug>(devdocs-under-cursor)

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

let g:pymode_lint = 0

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

" vim:foldmethod=marker:foldlevel=1
