      let s:conflict_count = 0
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
      let l:dirPathCommand = dirPathWithName[0]
      let l:name  = dirPathWithName[1]
      let l:commandName= 'A'.slice(l:name, 0, 3)
      let isNameConflict =  has_key(s:commandNames, l:commandName)

      echo s:commandNames
      echo isNameConflict

      if (!isNameConflict)
        echo 'hi'
      echo l:dirPathCommand
      echo l:commandName
        exec 'command! '.l:commandName.' :e '.l:dirPathCommand
      else
        let s:conflict_count += 1
        let l:command_suffix = string(s:conflict_count)
        let l:commandName= l:commandName.l:command_suffix
      echo l:dirPathCommand
      echo l:commandName
        exec 'command! '.l:commandName.' :e '.l:dirPathCommand
      endif
      let s:commandNames[l:commandName] = 1

      call GetDir(l:dirPathCommand)
    endfor
  endif
   
endfunction

let $ANGULAR_APP_DIR=$ANGULAR_APP_DIR
command! Asrc :e $ANGULAR_APP_DIR
let path_to_app = $ANGULAR_APP_DIR . 'app'
let path_to_routing = $ANGULAR_APP_DIR . 'app' . '/app-routing.module.ts'
"echo path_to_app
silent!  call  GetDir(path_to_app)
exec 'command! Arouting :e '.path_to_routing
exec 'command! App :e '.path_to_app
command! Asrc :e $ANGULAR_APP_DIR
command! Asource :source /Users/andrewmiller/.vim/pack/01-user_env_manager_notes_exercises/start/user_env_manager_notes_exercises/plugin/angular.vim

