"autocmd! BufWritePost <buffer> :source %

"echo typename(string(3))
"echo split('foo', '\zs')
"echo join(['f', 'o','o'], '')
"echo join(reverse(split('reverse me', '\zs')),'')
"echo 1 !=# 2
"echo 1 ==# 2
"echo 'like' ==# "like"
"echo 'LIKE' ==# "like"
"echo 'LIKE' ==? "like"
"echo toupper('upper')
"echo tolower('LOWER')

let s:first_name = input("what is your first name? ")
let s:last_name = input('What is your last name? ')

echo "\nHello, " . s:first_name . s:last_name ."☻ "



