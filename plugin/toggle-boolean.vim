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
  if l:booleanUnderCursor ==# 'string' 
      echo ' THE WORD UNDER THE CUROSOR IS TRUE'
      normal ciwnumber
  endif
  if l:booleanUnderCursor ==# 'number' 
    normal ciwstring
  endif
  if l:booleanUnderCursor ==# 'k' 
    normal ciwkubectl
  endif
  if l:booleanUnderCursor ==# 'mk' 
    normal ciwminikube
  endif
endfunction
nnoremap † :call Toggle()<cr>
