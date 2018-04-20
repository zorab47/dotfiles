"
" Sources of Vim-spiration
"
" - Ben Orenstein:    https://github.com/r00k/dotfiles
" - Chris Toomey:     https://github.com/christoomey/dotfiles
" - Junegun:          https://github.com/junegunn/dotfiles
" - Lifepillar:       https://github.com/lifepillar/vimrc
" - Wynn Netherland:  https://github.com/pengwynn/dotfiles
"
" Launch Config {{{
if !has('vim_starting')
  set encoding=utf-8
  scriptencoding utf-8
endif

call plug#begin()

Plug 'AndrewRadev/splitjoin.vim'
Plug 'Chun-Yang/vim-action-ag'
Plug 'Keithbsmiley/investigate.vim'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'airblade/vim-gitgutter'
Plug 'arecarn/crunch.vim'
Plug 'arecarn/selection.vim'
Plug 'beloglazov/vim-online-thesaurus', { 'on': 'Thesaurus' }
Plug 'bogado/file-line'
Plug 'chrisbra/vim-diff-enhanced'
Plug 'christoomey/vim-conflicted'
Plug 'christoomey/vim-sort-motion'
Plug 'christoomey/vim-system-copy'
Plug 'christoomey/vim-textobj-codeblock', { 'for': ['markdown'] }
Plug 'christoomey/vim-titlecase'
Plug 'christoomey/vim-tmux-navigator'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'dag/vim-fish', { 'for': 'fish' }
Plug 'dbmrq/vim-ditto'                                                           " Highlights overused words
Plug 'ecomba/vim-ruby-refactoring', { 'for': 'ruby' }
Plug 'garbas/vim-snipmate'
Plug 'godlygeek/tabular'
Plug 'honza/vim-snippets'
Plug 'itchyny/lightline.vim'
Plug 'jcfaria/Vim-R-plugin', { 'for': 'r' }
Plug 'joker1007/vim-ruby-heredoc-syntax', { 'for': 'ruby' }
Plug 'jszakmeister/vim-togglecursor'                                             " Toggle the cursor shape in the terminal for Vim
Plug 'junegunn/goyo.vim', { 'on': 'Goyo' }
Plug 'junegunn/gv.vim'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/vim-emoji'
Plug 'junegunn/vim-journal'
Plug 'junegunn/vim-peekaboo'
Plug 'justinmk/vim-gtfo'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-line'
Plug 'kana/vim-textobj-user'
Plug 'kchmck/vim-coffee-script', { 'for': ['coffee', 'ruby'] }
Plug 'klen/python-mode', { 'for': 'python' }
Plug 'ktonga/vim-follow-my-lead'                                                 " Showing all your <Leader> mappings `<Leader>fml`
Plug 'lifepillar/pgsql.vim', { 'for': ['sql', 'pgsql', 'markdown'] }
Plug 'lifepillar/vim-cheat40'
Plug 'mattly/vim-markdown-enhancements', { 'for': ['markdown', 'gitcommit'] }
Plug 'nelstrom/vim-textobj-rubyblock', { 'for': 'ruby' }
Plug 'neomake/neomake'
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'pbrisbin/vim-mkdir'
Plug 'reedes/vim-litecorrect', { 'for': ['markdown', 'gitcommit', 'text'] }      " Lightweight auto-correction for Vim
Plug 'reedes/vim-pencil'                                                         " Rethinking Vim as a tool for writing
Plug 'reedes/vim-wordy'
Plug 'rhysd/devdocs.vim', { 'on': '<Plug>(devdocs-under-cursor)' }
Plug 'rking/ag.vim', { 'on': 'Ag' }
Plug 'solars/github-vim'                                                         " Adds commands to interact with GitHub repo URLs
Plug 'thoughtbot/vim-rspec', { 'for': 'ruby' }
Plug 'tmux-plugins/vim-tmux', { 'for': 'tmux' }
Plug 'tomtom/tlib_vim'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-endwise', { 'for': ['ruby', 'sh', 'vim'] }
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-git'
Plug 'tpope/vim-haml',     { 'for': 'haml' }
Plug 'tpope/vim-markdown', { 'for': ['markdown', 'gitcommit'] }
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-ragtag', { 'for': 'eruby' }
Plug 'tpope/vim-rails', { 'for': 'ruby' }
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-rhubarb'                                                         " GitHub extension for fugitive.vim
Plug 'tpope/vim-surround'
Plug 'tpope/vim-tbone', { 'on': 'Twrite' }
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-vinegar'
Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
Plug 'vim-scripts/renumber.vim', { 'on': 'Renumber' }
Plug 'vimwiki/vimwiki'                                                           " A personal wiki for vim
Plug 'xiaogaozi/easy-gitlab.vim'
Plug 'zorab47/vim-gams', { 'for': 'gams' }

" Color schemes
Plug 'junegunn/seoul256.vim'
Plug 'morhetz/gruvbox'

" Gvim
if has("gui_running")
  Plug 'drmikehenry/vim-fontsize'
end

call plug#end()

" ----------------------------------------------------------------------------
" matchit.vim
" ----------------------------------------------------------------------------
runtime! macros/matchit.vim

" Settings
let g:cheat40_use_default = 0
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh', 'ruby', 'sql']
let g:sql_type_default = 'pgsql'
let g:vim_markdown_new_list_item_indent = 2

" When the type of shell script is /bin/sh, assume a POSIX-compatible shell for
" syntax highlighting purposes.
" More on why: https://github.com/thoughtbot/dotfiles/pull/471
let g:is_posix = 1


if !has('g:syntax_on')
  syntax enable
endif
filetype plugin indent on     " load filetype-specific indent and plugin files

" }}}
" Colors {{{

" ┏━╸┏━┓╻  ┏━┓┏━┓┏━┓
" ┃  ┃ ┃┃  ┃ ┃┣┳┛┗━┓
" ┗━╸┗━┛┗━╸┗━┛╹┗╸┗━┛

if has('termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum" " Needed in tmux
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum" " Ditto
  set termguicolors " Make use of 24-bit colors
endif

set background=dark

" Seoul
let g:seoul256_background = 235
let g:seoul256_light_background = 256

" Gruvbox
let g:gruvbox_italic=1                 " Enable italics in Gruvbox
let g:gruvbox_improved_warnings=0      " Enable italics in Gruvbox

if &t_Co >= 256 || has("gui_running")
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
set nojoinspaces              " prevent inserting two spaces after punctuation
" }}}
" UI Config {{{
set number                    " show line numbers
set nowrap                    " do not wrap long lines
set showcmd                   " display incomplete commands
set wildmenu                  " visual autocomplete for command menu
set wildignore=*.swp          " ignore swp files in completion
set list                      " show whitespace chars
set listchars=                " Reset listchars
set listchars+=tab:▸\         " Symbols to use for invisible characters
set listchars+=trail:·        " trailing whitespace
set listchars+=nbsp:•         " non-breaking space
set listchars+=extends:→      " line continues beyond right of the screen
set lazyredraw                " redraw only when we need to
set modeline                  " always show modeline
set shortmess+=c              " Suppress ins-completion messages
set shortmess+=I              " Suppress intro message when starting Vim
set cmdheight=1               " more room to display messages
set scrolloff=10              " keep cursor line from the bottom of the window
set sidescrolloff=5           " keep cursor from the side of the window
set sidescroll=1              " minimum number of columns to scroll horizontally
set splitright                " Opens vertical split right of current window
set splitbelow                " Opens horizontal split below current window
set laststatus=2              " Always show status line of last window
set noshowmode                " Show current mode in the modeline
set ruler                     " Show line and column number
set formatoptions+=1          " Do not wrap after a one-letter word
set formatoptions+=j          " Remove extra comment when joining lines
set diffopt+=vertical         " Diff in vertical mode by default
set foldenable
set foldlevelstart=10         " Open most folds by default to
set foldnestmax=10            " 10 nested fold max

set autoread                  " Re-read file if it is changed by external program
set hidden                    " Allow buffer switching without saving


let &showbreak = '↳ '
set breakindent
set breakindentopt=sbr

set ttyfast                   " Send more characters for redraws

set mouse=a                   " enable mouse

if exists('+colorcolumn')
  set colorcolumn=81          " highlight column 81 for text alignment
endif
" }}}
" Searching {{{
set gdefault                  " add the `g` flag to search/replace by default
" }}}

" Leader Shortcuts {{{
let mapleader=' '       " Space for leader key instead of the default: \

" edit vimrc and reload vimrc - mnemonic: (e)dit(v)imrc, (r)eload(v)imrc
nnoremap <leader>ev :tabe $MYVIMRC<CR>
nnoremap <leader>rv :source $MYVIMRC<CR>

" Last inserted text
nnoremap g. :normal! `[v`]<cr><left>

" Tmux Write
noremap <Leader>w :Twrite<CR>

" edit global todo list
noremap <Leader>n :tabe ~/todo.md<CR>

" edit global improvement / tool sharpening list
" map <Leader>i :tabe ~/tool_sharpening.md<CR>

" Execute Dispatch for current file
set shell=/bin/bash               " required for Dispatch in the fish shell
noremap <Leader>d :w<CR>:Dispatch<CR>

" Execute RSpec for current file
noremap <Leader>t :w<CR>:call RunCurrentSpecFile()<CR>
noremap <Leader>s :w<CR>:call RunNearestSpec()<CR>
noremap <Leader>l :w<CR>:call RunLastSpec()<CR>
noremap <Leader>as :w<CR>:call RunAllSpecs()<CR>
let g:rspec_command = "Dispatch bundle exec rspec --format=progress {spec}"

let g:snipMate = {}
let g:snipMate.override = 1
" Edit snippets - mnemonic: (e)dit(s)nippets
noremap <Leader>es :tabe ~/.vim/after/snippets/ruby.snippets<CR>

nnoremap <leader>fw :FixLastSpellingError<CR>

" copy current file path to clipboard - mnemonic: (c)urrent(f)ilename
nnoremap <silent> <Leader>cf :let @+ = expand("%:p")<CR>
" copy filename to clipboard - mnemonic: (c)urrent(n)name
nnoremap <silent> <Leader>cn :let @+ = expand("%:t")<CR>

" map <Leader>ag :tabe<CR>:Ag<space>

nnoremap <silent> <Leader>ag :Ag <C-R><C-W><CR>

" ----------------------------------------------------------------------------
" <Leader>I/A | Prepend/Append to all adjacent lines with same indentation
" ----------------------------------------------------------------------------
nmap <silent> <leader>I ^vii<C-V>I
nmap <silent> <leader>A ^vii<C-V>$A

" ----------------------------------------------------------------------------
" Markdown headings
" ----------------------------------------------------------------------------
nnoremap <silent> <leader>1 m`yypVr=``
nnoremap <silent> <leader>2 m`yypVr-``
nnoremap <silent> <leader>3 m`^i### <esc>``4l
nnoremap <silent> <leader>4 m`^i#### <esc>``5l
nnoremap <silent> <leader>5 m`^i##### <esc>``6l

" }}}
" Abbreviations {{{
ab zaa ActiveAdmin
ab zopp opportunity
ab zOpp Opportunity
ab zopps opportunities
ab zOpps Opportunities

" Date abbr: 2014-10-30
ab <expr> zda strftime("%Y-%m-%d")

" Date and time abbr: 2014-10-30 10:00
ab <expr> zdt strftime("%Y-%m-%d %H:%M")

" }}}
" Custom Key Mappings {{{
" quickly open new tabs
nnoremap <C-W>e :tabe<cr>

" Avoid using escape key
imap jj <Esc>
" cmap jj <C-c>

" Duplicated selected text using v_D
vmap D y'>p

" Calendar
command! Cal !cal -h 2017

" Remove trailing whitespace using F5
command! Chomp %s/\s\+$// | normal! ``
nnoremap <F5> :Chomp<CR>

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

" ----------------------------------------------------------------------------
" HL | Find out syntax group
" ----------------------------------------------------------------------------
function! s:hl()
  " echo synIDattr(synID(line('.'), col('.'), 0), 'name')
  echo join(map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")'), '/')
endfunction
command! HL call <SID>hl()

" Plugin Configs
" --------------

" vim-gitgutter
nmap ghs <Plug>GitGutterStageHunk
nmap ghu <Plug>GitGutterUndoHunk
nmap ghp <Plug>GitGutterPreviewHunk

" Visual select; then `glo` to do a Gitlab Open
let g:easy_gitlab_url = 'https://git.orm-tech.com'

" Goyo {{{
let g:goyo_width = 82
function! s:goyo_enter()
  silent !tmux set status off
  silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z
  set noshowmode
  set noshowcmd
  set scrolloff=999
  setlocal colorcolumn=
  set wrap
  set linebreak
  set nobreakindent
  set showbreak=
  setlocal nocursorline
  Limelight
endfunction

function! s:goyo_leave()
  silent !tmux set status on
  silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z
  set showmode
  set showcmd
  set colorcolumn=81
  set scrolloff=5
  set nowrap
  set nolinebreak
  set breakindent
  setlocal cursorline
  let &showbreak = '↳ '
  Limelight!
endfunction
" }}}

" vim-slash
" noremap <plug>(slash-after) zz

" ----------------------------------------------------------------------------
" vim-ruby
" ----------------------------------------------------------------------------
" ft-ruby-syntax
let ruby_indent_access_modifier_style = 'indent'
let ruby_operators = 1
let ruby_space_errors = 1
let ruby_spellcheck_strings = 1

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
  let &grepprg = 'ag --nogroup --nocolor --column'
else
  let &grepprg = 'grep -rn $* *'
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
" Pencil {{{
let g:pencil#conceallevel=0
let g:pencil#concealcursor='c'
" }}}
" AutoGroups {{{
augroup vimrc
  autocmd!

  " Goyo
  autocmd User GoyoEnter nested call <SID>goyo_enter()
  autocmd User GoyoLeave nested call <SID>goyo_leave()

  " Neomake
  autocmd BufWritePost * Neomake

  " Auto source vimrc on change
  autocmd BufWritePost $MYVIMRC nested source $MYVIMRC

  " Only display cursor line in active buffer
  autocmd BufWinEnter,WinEnter * setlocal cursorline
  autocmd BufWinLeave,WinLeave * setlocal nocursorline

  " autocmd BufWinEnter,WinEnter * setlocal cursorcolumn
  " autocmd BufWinLeave,WinLeave * setlocal nocursorcolumn

  " Only display reference column in active buffer
  autocmd BufWinEnter,WinEnter * setlocal colorcolumn=81
  autocmd BufWinLeave,WinLeave * setlocal colorcolumn=0

  " Markdown specifics: enable spellchecking and hard wrap at 80 characters
  autocmd FileType markdown setlocal spell nolist textwidth=81 complete+=kspell conceallevel=3
  autocmd FileType mkd      setlocal spell nolist textwidth=80 complete+=kspell conceallevel=3

  " Enable spellchecking for gitcommits
  autocmd FileType gitcommit setlocal spell complete+=kspell

  " Unset paste on InsertLeave
  autocmd InsertLeave * silent! set nopaste

  " Automatic rename of tmux window
  if exists('$TMUX') && !exists('$NORENAME')
    au BufEnter * if empty(&buftype) | call system('tmux rename-window '.expand('%:t:S')) | endif
    au VimLeave * call system('tmux set-window automatic-rename on')
  endif

  " Disable expandtab for php
  autocmd FileType php setlocal noexpandtab sw=2 ts=2

  " Use # as R comment string
  autocmd FileType r set commentstring=#\ %s

  " Use -- as SQL comment string
  autocmd FileType sql setlocal commentstring=--\ %s

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

  " autocmd ColorScheme * highlight clear SignColumn

  autocmd Filetype coffee map <buffer> <Leader>t :!teaspoon<CR>
  autocmd Filetype php    map <buffer> <Leader>t :!phpunit --colors %<CR>
  autocmd Filetype qf     setlocal nolist wrap nobreakindent
augroup END

augroup litecorrect
  autocmd!
  autocmd FileType markdown,mkd call litecorrect#init()
  autocmd FileType text call litecorrect#init()
  autocmd FileType gitcommit call litecorrect#init()
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
set undofile
set undodir=~/.vim-tmp,~/.tmp,/var/tmp,/tmp
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
