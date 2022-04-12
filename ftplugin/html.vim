
function! MakeHTMLTags() abort 
     let l:word = expand('<cWORD>')
     exec 'normal ciW'.' <'.l:word.'>'.' </'.l:word.'>'
endfunction
inoremap ;; <esc><left>:call MakeHTMLTags()<cr>BBE

"    <word-word> </word-word>
