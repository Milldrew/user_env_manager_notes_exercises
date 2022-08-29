inoremap csl console.log()<left>
nnoremap <leader>cc /constructor<CR>f)i
syntax region foldBraces start=/{/ end=/}/ transparent fold keepend extend
setlocal foldmethod=syntax
setlocal foldlevel=0
:normal zR
