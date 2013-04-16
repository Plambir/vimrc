" My lvim function
function! FindWordInFile(word)
  silent exec "vimgrep /\\<" . a:word . "\\>/g %"
  let l:current_window = winnr()
  cw
  exec l:current_window . " wincmd w"
endfunction

function! FindWordInFiles(word)
  let l:extension = expand("%:e")
  if l:extension == 'c' || l:extension == 'h' || l:extension == 'cpp'
    let l:extension = '{c,h,cpp}'
  elseif l:extension == 'cc' || l:extension == 'hh'
    let l:extension = '{cc,hh}'
  endif
  let l:files = "./**/*." . l:extension
  silent exec "vimgrep /\\<" . a:word . "\\>/gj " . l:files
  let l:current_window = winnr()
  cw
  exec l:current_window . " wincmd w"
endfunction

" My custom for :cw
function! QuicklistToggle()
  let l:current_window = winnr()
  while 1
    if &bt == 'quickfix'
      let l:close_quickfix = 1
      exec 'cclose'
      break
    endif
    wincmd w
    if l:current_window == winnr()
      break
    endif
  endwhile
  exec l:current_window . " wincmd w"

  if !exists("l:close_quickfix")
    let l:current_window = winnr()
    exec "copen"
    exec l:current_window . " wincmd w"
  endif
endfunction

function! InsertSnippet(snippet)
  exe "normal i" . a:snippet . "\<tab>"
endfunction

" Toggle relativenumber/number
let g:relativenumber_off = 1
function! NumberTypeToggle()
  if g:relativenumber_off == 1
    set relativenumber
    let g:relativenumber_off = 0
  else
    set number
    let g:relativenumber_off = 1
  endif
endfunction

command! -nargs=0 CD :exec 'cd ' . expand("%:h")

"From: http://blog.siyelo.com/vim-tips-part-ii
command! -nargs=0 -bar Qargs call ArgsWithSaveBuffer()

" populate the argument list with each of the files named in the quickfix list
function! QuickfixFilenames()
  let buffer_numbers = {}
  for quickfix_item in getqflist()
    let buffer_numbers[quickfix_item['bufnr']] = bufname(quickfix_item['bufnr'])
  endfor
  return join(map(values(buffer_numbers), 'fnameescape(v:val)'))
endfunction

function! ArgsWithSaveBuffer()
  let cb = bufnr("%")
  exec 'args ' . QuickfixFilenames()
  exec "b" . cb
endfunction
