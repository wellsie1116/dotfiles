
" Go specific settings.
setlocal tabstop=4
setlocal shiftwidth=4
setlocal autoindent
setlocal smarttab

map <Leader>e :update<CR>:!clear<CR>:!go run %<CR>
