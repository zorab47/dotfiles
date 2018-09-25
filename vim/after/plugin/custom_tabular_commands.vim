" Provides extra :Tabularize commands

if !exists(':Tabularize')
  finish " Give up here; the Tabular plugin musn't have been loaded
  echo "done"
endif

" Make line wrapping possible by resetting the 'cpo' option, first saving it
let s:save_cpo = &cpo
set cpo&vim

" Ruby
" align '=' but not '!=', '<=', '==', or '=>'.
nmap <Leader>a= :Tabularize /[^!<=]\@<=\(=\)[=>]\@!/<CR>
vmap <Leader>a= :Tabularize /[^!<=]\@<=\(=\)[=>]\@!/<CR>
nmap <Leader>ac= :Tabularize /[^!<=]\@<=\(=\)[=>]\@!/r1c1l1<CR>
vmap <Leader>ac= :Tabularize /[^!<=]\@<=\(=\)[=>]\@!/r1c1l1<CR>

" align ':' but not '::' or 'http://'
nmap <Leader>a: :Tabularize /[^:]\@<=:\/\@!\zs:\@!<CR>
vmap <Leader>a: :Tabularize /[^:]\@<=:\/\@!\zs:\@!<CR>

nmap <Leader>a{ :Tabularize /[^#]\@<={<CR>
vmap <Leader>a{ :Tabularize /[^#]\@<={<CR>

nmap <Leader>a> :Tabularize /=><CR>
vmap <Leader>a> :Tabularize /=><CR>
nmap <Leader>ac> :Tabularize /=>/r1c1l1<CR>
vmap <Leader>ac> :Tabularize /=>/r1c1l1<CR>

nmap <Leader>a, :Tabularize /,\zs/l1r0<CR>
vmap <Leader>a, :Tabularize /,\zs/l1r0<CR>

" hash keys (a)lign (k)eys
nmap <Leader>ak :Tabularize /\w\+:[:]\@!<CR>
vmap <Leader>ak :Tabularize /\w\+:[:]\@!<CR>

nmap <Leader>ack :Tabularize /:[:]\@!/r0c1l1<CR>
vmap <Leader>ack :Tabularize /:[:]\@!/r0c1l1<CR>

" (a)lign ruby (p)roc literals
nmap <Leader>ap :Tabularize ruby_proc<CR>
vmap <Leader>ap :Tabularize ruby_proc<CR>

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

" Align ->, proc, and lambda
AddTabularPattern! ruby_proc /\(->\|proc\|lambda\)

" Restore the saved value of 'cpo'
let &cpo = s:save_cpo
unlet s:save_cpo
