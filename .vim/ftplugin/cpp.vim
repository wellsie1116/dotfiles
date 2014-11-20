
" C Specific Formatting

set tabstop=4
set shiftwidth=4
set expandtab

syntax keyword cType gint gchar gboolean gfloat
syntax keyword cType gdouble guchar guint glong gulong
syntax keyword cType gint64 guint64 gpointer

" Execute run command in a makefile
map <buffer> <S-e> :update<CR>:!clear<CR>:!make run <CR>
