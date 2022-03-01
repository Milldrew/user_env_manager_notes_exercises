""autocmd! BufWritePost <buffer> :source %
""
"echom 1 ==# 1
"echom 'a' ==# 'A'
"echom toupper('hello')
"echom tolower('HELLO')
"
"let s:foo = [1,2,3,4,5,6]
"
"
"for f in s:foo
" echo f
"endfor
"
"
"|buffer-variable|    b:	  Local to the current buffer.
"|window-variable|    w:	  Local to the current window.
"|tabpage-variable|   t:	  Local to the current tab page.
"|global-variable|    g:	  Global.
"|local-variable|     l:	  Local to a function.
"|script-variable|    s:	  Local to a |:source|'ed Vim script.
"|function-argument|  a:	  Function argument (only inside a function).
"|vim-variable|       v:	  Global, predefined by Vim.
"
"
"
let s:word = 'abc'
let s:char_list = split(s:word, '\zs')
echom s:char_list
" rot 13 change 
let s:original_char = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'
let s:index =  stridx(s:original_char, 'z')
echom s:index
"
let s:mapped_char = 'nopqrstuvwxyzabcdefghijklmNOPQRSTUVWXYZABCDEFGHIJKLM'
"

for char in s:char_list
let s:index = stridx(s:original_char, char)
let s:word = substitute(s:word,char,s:mapped_char[s:index], '\g')
endfor 
echom s:word



"
"
"
"
"
"
"
"
"
"
"
"
"
"
"
