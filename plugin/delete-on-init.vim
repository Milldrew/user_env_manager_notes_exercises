function DeleteOnInit() abort
 :w
 :g/ngOnInit/d
 :%s/OnInit//
 :%s/implements//
 :w
endfunction
command! DInit :call DeleteOnInit()
