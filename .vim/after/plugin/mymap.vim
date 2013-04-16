" Launch urxvt
nmap <Leader><Enter> :call system("urxvt&")<Enter>

nnoremap <Leader>g :GundoToggle<Enter>

nmap <Leader>no :NERDTree<Enter>
nmap <Leader>nc :NERDTreeClose<Enter>
nmap <Leader>nt :NERDTreeToggle<Enter>

nmap <Leader>bc  :bw<Enter>

nmap <Leader>;n :call NumberTypeToggle()<Enter>
nmap <Leader>;l :call FindWordInFile(expand("<cword>"))<Enter>
nmap <Leader>;g :call FindWordInFiles(expand("<cword>"))<Enter>
nmap <C-n> :cc<Enter>:cn<Enter>
nmap <C-p> :cc<Enter>:cp<Enter>
nmap <Leader>;q :call QuicklistToggle()<Enter>

imap <C-\> <C-^>
cmap <C-\> <C-^>

for s:i in range(1,9)
  exec "nmap <Leader>" . s:i . " :exec " . s:i . " 'wincmd w'<Enter>"
endfor
let s:i = 0
exec "nmap <Leader>" . s:i . " :exec " . s:i . " 'wincmd w'<Enter>"

imap <M-/> </<C-X><C-O>
nmap <Leader>;r :%s/\<<c-r>=expand("<cword>")<cr>\>/
nmap <Leader>e :e <c-r>=expand("%:h")<cr>/

nmap <Leader>nf :NERDTreeFocus<Enter>

nmap <Leader>tt :TagbarToggle<cr>
nmap <Leader>to :TagbarOpen<cr>
nmap <Leader>tc :TagbarClose<cr>
nmap <Leader>ts :TagbarOpenAutoClose<cr>

nmap <Leader>wn :e ~/.conky/note.txt<cr>

map <F5> :make<Enter>
map <F10> :make run<Enter>

nmap <Leader>lf :CtrlP<Enter>
nmap <Leader>lb :CtrlPBuffer<Enter>
nmap <Leader>lm :CtrlPMRU<Enter>
nmap <Leader>lt :CtrlPBufTag<Enter>
nmap <Leader>lT :CtrlPBufTagAll<Enter>
nmap <Leader>lc :CtrlPChange<Enter>
nmap <Leader>ls :CtrlPMixed<Enter>
nmap <Leader>q  :A<Enter>

inoremap <expr><C-x><C-x> neocomplcache#start_manual_complete()
