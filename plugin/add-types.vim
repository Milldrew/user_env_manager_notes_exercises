command!  -bang -bar -range=0  AddAny
    \ :call AddAny(<line1>)

function! AddAny(line1) abort
exec "normal mm"
exec a:line1."normal f(wea: any\<esc>"
exec "normal 'm"
endfunction





