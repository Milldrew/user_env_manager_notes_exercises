  command Config :e /Users/andrewmiller/.vim/pack/01-user_env_manager_notes_exercises/start/user_env_manager_notes_exercises/plugin/environment.vim 

if $PROJECT_TYPE ==# 'nest'
  command Src :e $PROJECT_ROOT/src
  command Beverages :e $PROJECT_ROOT/src/beverages
  command BevDtos :e $PROJECT_ROOT/src/beverages/dto
  command BevEntities :e $PROJECT_ROOT/src/beverages/entities
  command BevCo :e $PROJECT_ROOT/src/beverages/beverages.controller.ts
  command BevMo :e $PROJECT_ROOT/src/beverages/beverages.module.ts
  command BevServ :e $PROJECT_ROOT/src/beverages/beverages.service.ts
endif
