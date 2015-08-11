function! s:FixLastSpellingError()
  let position = getpos('.')[1:3]
  let current_line_length = len(getline('.'))
  normal! [s1z=
  let new_line_length = len(getline('.'))
  let position[1] += (new_line_length - current_line_length)
  call cursor(position)
  silent! call repeat#set("\<Plug>FixLastSpellingError", 0)
endfunction
command! FixLastSpellingError call <sid>FixLastSpellingError()
noremap <Plug>FixLastSpellingError :FixLastSpellingError<CR>
