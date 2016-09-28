filetype plugin indent on

set expandtab
set shiftwidth=2
set softtabstop=2

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

