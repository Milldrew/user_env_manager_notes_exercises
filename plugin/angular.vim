function! GetDir(dirPath) abort
  call chdir(a:dirPath)
  let l:files = readdir(a:dirPath)
  let l:fullDirPaths = []
  for file in files
    if isdirectory(file)
      call add(l:fullDirPaths, [a:dirPath.'/'.file, file]) 
    endif
  endfor
  

  if len(fullDirPaths) > 0
    for dirPathWithName in fullDirPaths
      let l:dirPathCommand = dirPathWithName[0]
      let l:name  = dirPathWithName[1]
      let l:commandName= 'A'.slice(l:name, 0, 3)
      exec 'command! '.l:commandName.' :e '.l:dirPathCommand
      call GetDir(l:dirPathCommand)
    endfor
  endif
   
endfunction

call GetDir($ANGULAR_APP_DIR)
