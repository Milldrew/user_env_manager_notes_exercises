command! -range Reword :s/pick/reword
command! -range Squash :s/pick/squash
command! -nargs=1 Vimgrep :vimgrep <args> ./**
command! D3notes :e ~/D3notes.txt
command! ABbugs :e ~/ABbugs.txt
command! Scratchv :e ~/scratch.vim
command! Latest :e ~/.chat/latest-response.txt
command! Scratch :e ~/scratch.txt
command! Repl :e ~/repl.vim
command! Bashrc :e ~/.local/share/nvim/site/pack/packer/start/user_env_manager_notes_exercises/bash_modules
command! Bookmarks :e ~/.local/share/nvim/site/pack/packer/start/user_env_manager_notes_exercises/bookmarks.txt
command! Commands :e ~/.local/share/nvim/site/pack/packer/start/user_env_manager_notes_exercises/plugin/commands.vim
command! Exercises :e ~/.local/share/nvim/site/pack/packer/start/user_env_manager_notes_exercises/exercises
command! Ftplugins :e ~/.local/share/nvim/site/pack/packer/start/user_env_manager_notes_exercises/ftplugin/
command! Plugins :e ~/.local/share/nvim/site/pack/packer/start/user_env_manager_notes_exercises/plugin/
command! Ftplugin :e ~/.vim/ftplugin
command! Notes :e ~/.local/share/nvim/site/pack/packer/start/user_env_manager_notes_exercises/notes/
command! -nargs=* Replace :!replace <args>
command! -nargs=* Gdiff :exec':!gdiff ' . expand('%:p') . ' ' . <args>
command! Schedule :e ~/.local/share/nvim/site/pack/packer/start/user_env_manager_notes_exercises/schedule.txt
command! ScriptingHelp :h usr_41.txt
command! Vimpacks :e ~/.vim/pack/
command! Vimrc :e ~/.config/nvim/init.vim
command! Ln :lua package.loaded["create-shortcuts"] = nil
command! Lr :lua require('create-shortcuts')
command! Todos :e ~/todos.txt
command! Dontdo :e ~/dont-dos.txt
command! ABtasks :e ~/ABtasks.txt
command! Workout :e ~/Workout.txt
command! MemoryPalace :e ~/MemoryPalace.txt
" Create a command that inserts the current date and time at the cursors
" location
command! -nargs=0 InsertDate :call InsertDate()
function! InsertDate()
  let l:time = strftime("%c")
  call append(line("."), l:time)
endfunction
inoremap <leader>ID <esc>:call InsertDate()<cr>
nnoremap <leader>ID <esc>:call InsertDate()<cr>

command! Rerun :!rerun_playwright
nnoremap <leader>rr <esc>:!rerun_playwright<cr>
command! Stop :!stop_playwright 
nnoremap <leader>sp <esc>:!stop_playwright<cr>
command! RemoveDebuggers :!delete_debuggers<cr>
nnoremap <leader>rd <esc>:!delete_debuggers<cr>

command! CopyToRelease :exec "! /Users/andrewmiller/pgwebapp10/src/main/webapp/sh-bin/cp-changes-to-release.sh " . expand('%:p')
"
nnoremap <leader>CP :CopyToRelease<cr>

