function! NgImports() abort
 Sapp
 execute 'e app/app.module.ts'
 execute '/imports:\ ['
 execute 'normal f[a'
endfunction
nnoremap <leader>ii :call NgImports() <CR>


