source ~/.vim/env.vim

set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Bundle {{{
Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'tpope/vim-surround'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'sjl/gundo.vim'
Bundle 'tmallen/proj-vim'
Bundle 'SirVer/ultisnips'
Bundle 'vimwiki'
Bundle 'bufexplorer.zip'
Bundle 'glsl.vim'
Bundle 'Shougo/neocomplcache'
Bundle 'majutsushi/tagbar'
Bundle 'kien/ctrlp.vim'
Bundle 'Align'
Bundle 'git://fedorapeople.org/home/fedora/wwoods/public_git/vim-scripts.git'
Bundle 'mileszs/ack.vim'
Bundle 'Plambir/a.vim'
Bundle 'michaeljsmith/vim-indent-object'
Bundle 'keepcase.vim'
Bundle 'jnwhiteh/vim-golang'
Bundle 'Plambir/vim-visual-star-search'
" }}}

filetype plugin indent on     " required!

if has("gui_running")
  colorscheme lightroom
  set paste
else
  set t_Co=256
  colorscheme lightroom

  if version >= 700
    function! InsertStatuslineColor(mode)
      if a:mode == 'i'
        hi StatusLine ctermbg=218
      elseif a:mode == 'r'
        hi StatusLine ctermbg=45
      else
        hi StatusLine ctermbg=251
      endif
    endfunction

    au InsertEnter * call InsertStatuslineColor(v:insertmode)
    au InsertChange * call InsertStatuslineColor(v:insertmode)
    au InsertLeave * hi StatusLine ctermbg=251

    hi StatusLine ctermbg=251
  endif
end

set laststatus=2

function! QFixCount()
  let l:qfline = 0
  for d in getqflist()
    if d.valid != 0
      let l:qfline = l:qfline + 1
    endif
  endfor
  if l:qfline == 0
    return ""
  endif
  return " [QF: " . l:qfline . "]"
endfunction
set statusline=(%{winnr()})\ %q%<%f%m%r\ %y\ %k%=(%l:%c)\ %3p%%%{QFixCount()}

let mapleader = " "

set wmnu
set wildmode=list,longest

runtime ftplugin/man.vim

set makeprg=scons\ -Q

set nocompatible
set nu
set sessionoptions=curdir,buffers,tabpages
set hidden
set undolevels=1000
set nobackup
set swapfile
set novb
set incsearch 
set report=0
set hlsearch

set guicursor=a:blinkon0

set mouse=a
set mousemodel=popup

syntax on

set guioptions=aApi

" Настройка фолдинга {{{
set foldcolumn=1
set foldmethod=manual
set foldtext="v:folddashes.substitute(getline(v:foldstart),'/\\*\\\|\\*/\\\|{{{\\d\\=','','g')"
set foldlevel=100
" }}}

set hidden
set mousehide
set backspace=indent,eol,start whichwrap+=<,>,[,]

set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set cinoptions=>2
set cin
set smarttab

set cc=80

" spellchecking
set spelllang=ru,en

" TOhtml
let g:html_number_lines = 0

" Фонт
set guifont=Liberation\ Mono\ 8

if has("autocmd")
  au BufRead,BufNewFile *.h  setfiletype c
  au BufRead,BufNewFile *.hh  setfiletype cpp
endif

command SW set buftype=nowrite | silent execute ':%w !sudo tee %' | set buftype= | e! %

" Поиск
set ignorecase
set smartcase

" listchars and wrap
set wrap

set completeopt=longest,menuone

set keywordprg=

set wildignore=*.o,*.swp,*.mp4,*.mp3,*.zip,*.tar.gz,*.pdf,*.bin,*.flac,*.tar.bz2,*.jpg,*.jpeg,*.png,*.bmp,*.gif,*.tar.xz,*.ico
set wildignore+=*/CMakeFiles/*

" Color {{{
" Show syntax highlighting groups for word under cursor
nmap <Leader>;` :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
" }}}

function! <SID>Secon()
  set statusline+=\ %1*[BIT.GAMES]%0*
  set guifont=Liberation\ Mono\ 14
  hi User1 guibg=#FF0000 guifg=#FFFFFF gui=bold
endfunc
command Secon :call <SID>Secon()

