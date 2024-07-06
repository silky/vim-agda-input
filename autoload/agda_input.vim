if !exists("g:agda_input")
  let g:agda_input = {}
endif

function! agda_input#standard_bind_input(key, result)
    let l:agda_input_prefix = get(g:, "agda_input_prefix", "<localleader>")

    let input = l:agda_input_prefix . substitute(a:key, "|", "<bar>", "g")

    exec "silent inoremap " . input . " " . a:result

    call extend(g:agda_input, {a:key[0:0]: {}}, "keep")
    let rest = ""
    if len(a:key[1:]) == 0
      let rest = "\<CR\>"
    else
      let rest = a:key[1:]
    endif

    call extend(g:agda_input[a:key[0:0]], {rest : [a:result, a:result]})
endfunction

function! agda_input#bind_input(key, result)
  if exists("g:agda_input_bind_input_hook")
    call nvim_call_function(g:agda_input_bind_input_hook, [a:key, a:result])
  else
    call agda_input#standard_bind_input(a:key, a:result)
  endif
endfunction
