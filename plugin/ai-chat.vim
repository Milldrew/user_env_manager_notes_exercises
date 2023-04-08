let s:prompt_file = $HOME . '/.chat/prompt.txt'
let s:response_file = $HOME . '/.chat/latest-response.txt'
function! PromptAI() abort
  let input_string = input("Prompt AI to: ")
  call writefile([input_string], s:prompt_file)
  :vsplit
  exec 'tabnew ' . s:response_file
endfunction



nnoremap <leader>P :call PromptAI()<cr>
nnoremap <leader>% :e %<cr>


