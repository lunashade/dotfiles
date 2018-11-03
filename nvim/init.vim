augroup MyAutoCmd
	autocmd!
augroup END

" dein settings {{{
" dein install
let s:cache_home = empty($XDG_CACHE_HOME) ? expand('~/.cache') : $XDG_CACHE_HOME
let s:dein_dir = s:cache_home . '/dein'
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

if !isdirectory(s:dein_repo_dir)
	call system('git clone https://github.com/Shougo/dein.vim' . shellescape(s:dein_repo_dir))
endif

let &runtimepath = s:dein_repo_dir .','. &runtimepath

" dein call plugins
let s:toml_file = expand('<sfile>:h').'/dein.toml'
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)
  call dein#load_toml(s:toml_file)
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif
" }}}

" ========================================
" Key mapping
" ========================================
inoremap jj <Esc>
inoremap kk <Esc>
inoremap jk <Esc>
inoremap kj <Esc>
inoremap hh <Esc>
inoremap ll <Esc>
