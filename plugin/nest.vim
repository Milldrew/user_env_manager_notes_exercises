function! GetDir(dirPath) abort
  call chdir(a:dirPath)
  let l:files = readdir(a:dirPath)
  let l:fullDirPaths = []
  let l:commandNames = {}
  for file in files
    if isdirectory(file)
      call add(l:fullDirPaths, [a:dirPath.'/'.file, file]) 
    endif
  endfor
  

  if len(fullDirPaths) > 0
    for dirPathWithName in fullDirPaths
      let l:conflict_count = 0
      let l:dirPathCommand = dirPathWithName[0]
      let l:name  = dirPathWithName[1]
      let l:commandName= 'N'.slice(l:name, 0, 3)
      let isNameConflict =  has_key(commandNames, l:commandName)

      echo l:commandName
      if (!isNameConflict)
        echo 'hi'
      echo l:dirPathCommand
      echo l:commandName
        exec 'command! '.l:commandName.' :e '.l:dirPathCommand
      else
        let l:conflict_count += 1
        let l:command_suffix = string(l:conflict_count)
        let l:commandName= l:commandName.l:command_suffix
      echo l:dirPathCommand
      echo l:commandName
        exec 'command! '.l:commandName.' :e '.l:dirPathCommand
      endif
      let l:commandNames[l:commandName] = 1


      call GetDir(l:dirPathCommand)
    endfor
  endif
   
endfunction

let $NEST_SRC_DIR=$NEST_SRC_DIR
"silent! call GetDir($NEST_SRC_DIR)
call GetDir($NEST_SRC_DIR)
command! Src :e $NEST_SRC_DIR
