syntax on
set number
set hlsearch
set wildmenu
set hidden
set mouse=
set softtabstop=-1

let mapleader = ","

"Set locations for swap files
set backupdir=~/.vim/tmp,~/tmp,/var/tmp,/tmp,.
set directory=~/.vim/tmp,~/tmp,/var/tmp,/tmp,.

"Configure whitespace display
silent! set listchars=tab:>-,trail:·,eol:$
nnoremap <silent> <Leader>w :set nolist!<CR>

"Enable better matching with %
runtime macros/matchit.vim

"Clear search highlighting
nnoremap <silent> <Leader>s :let @/ = ""<CR>

"Toggle line numbers with <F2> for easy code copying
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>

"Tab reordering
nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . tabpagenr()<CR>

filetype plugin indent on

"latex-suite info
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
let g:Imap_FreezeImpl=0
nnoremap <silent> <F8> :let Imap_FreezeImpl = !Imap_FreezeImpl<CR>:echo Imap_FreezeImpl<CR>

"NERDTree
let NERDTreeIgnore=['\.vim$', '\~$', '\.o', '\.la', '\.in']

" Taglist variables
" Display function name in status bar:
let g:ctags_statusline=1
" Automatically start script
let generate_tags=1
" Displays taglist results in a vertical window:
let Tlist_Use_Horiz_Window=0
" Shorter commands to toggle Taglist display
nnoremap TT :TlistToggle<CR>
map <F4> :TlistToggle<CR>
" Various Taglist diplay config:
let Tlist_Use_Right_Window = 1
let Tlist_Compact_Format = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_File_Fold_Auto_Close = 1

" Function prototype formatter macro
let @p = "^/	ieldt($s{}j"

" Execute run command in a makefile
map <Leader>e :update<CR>:!clear<CR>:!make run <CR>
map <Leader>m :update<CR>:make -sj <CR>
map <silent> <Leader>fx :%! tidy -utf8 -xml -w 5 -i -q -asxml \| sed "s/^\(  \)*\w/  \0/"<CR>
map <silent> <Leader>fj :%! python -c "import sys; import json as j; print(j.dumps(j.loads(sys.stdin.read()), indent=1))"<CR>
command! Reload :source ~/.vimrc

set noignorecase

colorscheme desert
