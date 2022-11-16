function! ElementSelectorToClass() abort
  :1
  :/selector
  :.s/'/'./
endfunction
command! ToClass :call ElementSelectorToClass()
nnoremap <leader>TC :ToClass<CR>
function! ElementSelectorToElement() abort
  :1
  :/selector
  :.s/\.//
endfunction
command! ToElement :call ElementSelectorToElement()
nnoremap <leader>TE :ToElement<cr>
