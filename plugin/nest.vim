  let s:commandNames = {}
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
      let l:conflict_count = 0
      let l:dirPathCommand = dirPathWithName[0]
      let l:name  = dirPathWithName[1]
      let l:commandName= 'N'.slice(l:name, 0, 3)
      echo s:commandNames
      echo l:commandName
      let isNameConflict =  has_key(s:commandNames, l:commandName)
      let s:commandNames[l:commandName] = 1
      echo isNameConflict

      if (!isNameConflict)
        exec 'command! '.l:commandName.' :e '.l:dirPathCommand
      else
        echo "CONFLICT"
        let l:conflict_count += 1
        let l:command_suffix = string(l:conflict_count)
        let l:commandName= l:commandName.l:command_suffix
      echo l:dirPathCommand
        exec 'command! '.l:commandName.' :e '.l:dirPathCommand
      endif



      call GetDir(l:dirPathCommand)
    endfor
  endif
  echo s:commandNames 
endfunction

let $NEST_SRC_DIR=$NEST_SRC_DIR
silent! call GetDir($NEST_SRC_DIR)
"call GetDir($NEST_SRC_DIR)
command! Src :e $NEST_SRC_DIR
command! Nsource :source /Users/andrewmiller/.vim/pack/01-user_env_manager_notes_exercises/start/user_env_manager_notes_exercises/plugin/nest.vim
