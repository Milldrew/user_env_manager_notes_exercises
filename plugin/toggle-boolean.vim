function! Toggle() 
  let l:booleanUnderCursor = expand('<cword>')
  echo l:booleanUnderCursor

  if l:booleanUnderCursor ==# 'true' 
      echo ' THE WORD UNDER THE CUROSOR IS TRUE'
      normal ciwfalse
  endif
  if l:booleanUnderCursor ==# 'false' 
    normal ciwtrue
  endif
endfunction
nnoremap † :call Toggle()<cr>
