match ColorColumn /\s\+$/
autocmd BufWinEnter * match ColorColumn /\s\+$/
autocmd InsertEnter * match ColorColumn /\s\+\%#\@<!$/
autocmd InsertLeave * match ColorColumn /\s\+$/
autocmd BufWinLeave * call clearmatches()
