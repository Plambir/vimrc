" Undo
set undodir=~/.vim/undodir/

au BufReadPost * call ReadUndo()
au BufWritePost * call WriteUndo()

func! GetUndoFileName()
  return &undodir . substitute(expand("%:p"), '[/.\ ]', "___", "g") . ".undo"
endfunc

func! ReadUndo()
  let l:filename = GetUndoFileName()
  if filereadable(l:filename)
    silent exe "rundo " l:filename
  endif
endfunc

func! WriteUndo()
  let l:filename = GetUndoFileName()
  if !isdirectory(&undodir)
    call mkdir(&undodir)
  endif
  exe "wundo " . l:filename
endfunc
