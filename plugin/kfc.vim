
function ChooseCommand() abort
  let l:currentLine = line('.')
  let l:priorToCurrentLine = l:currentLine - 1
  let l:afterCurrentLine = l:currentLine + 1
  echo l:priorToCurrentLine
  echo l:afterCurrentLine
  execute l:afterCurrentLine . ',$d'
  execute '0,' . l:priorToCurrentLine . 'd'
endfunction

nnoremap <leader><leader>p :call ChooseCommand()<cr>
