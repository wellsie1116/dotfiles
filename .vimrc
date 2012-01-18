syntax on
set number
set hlsearch
set wildmenu
set hidden

let mapleader = ","

"Set locations for swap files
set backupdir=~/.vim/tmp,~/tmp,/var/tmp,/tmp,.
set directory=~/.vim/tmp,~/tmp,/var/tmp,/tmp,.

"Configure whitespace display
set listchars=tab:>-,trail:·,eol:$
nnoremap <Leader>w :set nolist!<CR>

"Enable better matching with %
runtime macros/matchit.vim

"Clear search highlighting
nnoremap <Leader>s :let @/ = ""<CR>

"Toggle line numbers with <F2> for easy code copying
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>

"Pretty indentation
filetype plugin indent on

"latex-suite info
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'

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
map <buffer> <Leader>e :update<CR>:!clear<CR>:!make run <CR>
map <buffer> <Leader>m :update<CR>:make -sj <CR>

command! Reload :source ~/.vimrc

colorscheme desert
