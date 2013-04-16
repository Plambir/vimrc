if !has("g:SnipNamespace")
  let g:SnipNamespace = ""
endif

if !has("g:SnipIncludePrefix")
  let g:SnipIncludePrefix = ""
endif

if !has("g:SnipDefinePrefix")
  let g:SnipDefinePrefix = ""
endif

au BufNewFile *.h   :call InsertSnippet("once")
au BufNewFile *.hh  :call InsertSnippet("once")
au BufNewFile *.hpp :call InsertSnippet("once")
