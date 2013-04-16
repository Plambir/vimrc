" vim-easymotion
let g:EasyMotion_leader_key = '<Leader>m'

" neocomplcache
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_auto_completion_start_length = 3
let g:neocomplcache_enable_cursor_hold_i = 1
let g:neocomplcache_cursor_hold_i_time = 500
let g:neocomplcache_max_list = 25
let g:neocomplcache_enable_fuzzy_completion = 1

if !exists('g:neocomplcache_filename_include_exts')
  let g:neocomplcache_filename_include_exts = {}
endif
let g:neocomplcache_filename_include_exts.cpp = ['', 'h', 'hh', 'hpp', 'hxx']

if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
let g:neocomplcache_omni_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" gundo
let g:gundo_width=50
let g:gundo_help=0
let g:gundo_preview_bottom=0
let g:gundo_right=1

" nerdcommenter
let NERDUsePlaceHolders=0
let NERDSpaceDelims=1
let g:NERDCustomDelimiters = {
    \ 'scons': { 'left': '#'}
\ }

" nerdtree
let NERDTreeIgnore=['.*\.o$', '.*\.pyc$']

" vimwiki
let s:nested_syntaxes = {'python': 'python', 'c++': 'cpp', 'c': 'c', 'sh': 'sh', 'dot': 'dot', 'js': 'javascript', 'hs': 'haskell', 'text' : 'text'}
let g:vimwiki_list = [{'path': '~/.vimwiki/', 'path_html': '~/.vimwiki/html/', 'nested_syntaxes' : s:nested_syntaxes, 'auto_export' : 1}]
let g:vimwiki_folding = 0
let g:vimwiki_camel_case = 0
let g:vimwiki_browsers = ['chromium']

" CtrlP
let g:ctrlp_dotfiles = 0
let g:ctrlp_cache_dir = $HOME.'/.vim/cache/ctrlp'
let g:ctrlp_max_depth = 10
let g:ctrlp_working_path_mode = 'a'
let g:ctrlp_switch_buffer = '0'

" UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
