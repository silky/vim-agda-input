if exists("b:agda_input_plugin")
  finish
endif
let b:agda_input_plugin = 1


" Load all the symbols
runtime symbols.vim
