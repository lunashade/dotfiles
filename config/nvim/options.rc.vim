" ========================================
" general settings
" ========================================

set noswapfile
set nobackup
set number
set list
set listchars=tab:»-,eol:↲,extends:»,precedes:«,nbsp:%
set smartindent
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab
set smarttab

set inccommand=split

" Windows Subsystem for Linux で、ヤンクでクリップボードにコピー
if system('uname -a | grep Microsoft') != ''
  augroup myYank
    autocmd!
    autocmd TextYankPost * :call system('clip.exe', @")
  augroup END
endif
