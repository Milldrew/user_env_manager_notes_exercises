command! InjectRoute call InjectRoute()
function! InjectRoute() abort
  exec "normal /constructor\<cr>f(aprivate route: ActivatedRoute"
endfunction
command! InjectRouter call InjectRouter()
function! InjectRouter() abort
  exec "normal /constructor\<cr>f(aprivate router: Router"
endfunction




