function! QuotesAroundWords() abort
  let l:currentLine = line('.')
  let l:currentLineString = getline('.')
  let l:currentLineWordList = split(l:currentLineString, '[ ]* ')
  
  
  for word in currentLineWordList
    exec l:currentLine . 's/' . word . '/' . '"' . word . '"'
  endfor

endfunction 

inoremap <leader><leader>q <esc>:call QuotesAroundWords()<cr>
noremap <leader><leader>q :call QuotesAroundWords()<cr>

" ALL OF THESE WORDS WILL BE SURROUNDED BY QUOTES

