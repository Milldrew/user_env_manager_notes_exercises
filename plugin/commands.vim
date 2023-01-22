command! -range Reword :s/pick/reword
command! -range Squash :s/pick/squash
command! -nargs=1 Vimgrep :vimgrep <args> ./**
command! D3notes :e ~/D3notes.txt
command! ABbugs :e ~/ABbugs.txt
command! ABtasks :e ~/ABtasks.txt
command! Scratchv :e ~/scratch.vim
command! Scratch :e ~/scratch.txt
command! Repl :e ~/repl.vim
command! Bashrc :e ~/.vim/plugged/user_env_manager_notes_exercises/bash_modules
command! Bookmarks :e ~/.vim/plugged/user_env_manager_notes_exercises/bookmarks.txt
command! Commands :e ~/.vim/plugged/user_env_manager_notes_exercises/plugin/commands.vim
command! Exercises :e ~/.vim/plugged/user_env_manager_notes_exercises/exercises
command! Ftplugins :e ~/.vim/plugged/user_env_manager_notes_exercises/ftplugin/
command! Plugins :e ~/.vim/plugged/user_env_manager_notes_exercises/plugin/
command! Ftplugin :e ~/.vim/ftplugin
command! Notes :e ~/.vim/plugged/user_env_manager_notes_exercises/notes/
command! Schedule :e ~/.vim/plugged/user_env_manager_notes_exercises/schedule.txt
command! ScriptingHelp :h usr_41.txt
command! Todos :e ~/.vim/plugged/user_env_manager_notes_exercises/todos.txt
command! Vimpacks :e ~/.vim/pack/
command! Vimrc :e ~/.config/nvim/init.vim
command! Ln :lua package.loaded["create-shortcuts"] = nil
command! Lr :lua require('create-shortcuts')



