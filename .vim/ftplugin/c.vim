
" C Specific Formatting

set tabstop=4
set shiftwidth=4

" Custom path entries
set path+=/usr/include/glib-2.0
set path+=/usr/include/glib-2.0/include

syntax keyword cType gint gchar gboolean gfloat gdouble guchar guint glong gulong gint64 guint64 gpointer

" Execute run command in a makefile
map <buffer> <S-e> :update<CR>:!clear<CR>:!make run <CR>
