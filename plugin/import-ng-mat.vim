" Import material component to the top of the app module
" add the name of the module to the imports array
"

function! AddMatComponent () abort 
  call inputsave()
  let l:componentName =  input("What is the name of the angular material component?")
  call inputrestore()
  let l:pathToModule =  $ANGULAR_APP_DIR . '/app/app.module.ts'
  let l:lowerComponentName = tolower(l:componentName[0]) . slice(l:componentName, 1)   
  let l:importString = 'import { Mat' . l:componentName . 'Module } from "@angular/material/' . l:lowerComponentName . '"'
  echo l:importString
  execute ":e " . l:pathToModule
  call append(0, l:importString)
  execute "normal /imports\<cr>f[aMat" . l:componentName . "Module,"
endfunction

nnoremap <leader>imc :call AddMatComponent()<cr>

