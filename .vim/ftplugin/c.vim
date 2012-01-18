
" C Specific Formatting

set tabstop=4
set shiftwidth=4

syntax keyword cType gint gchar gboolean gfloat gdouble guchar guint glong gulong gint64 guint64 gpointer

" Execute run command in a makefile
map <buffer> <S-e> :update<CR>:!clear<CR>:!make run <CR>
