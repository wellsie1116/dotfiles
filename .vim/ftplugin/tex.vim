
set sw=2
set iskeyword+=:

set tw=80

" Build a pdf without using dvi and ps intermediate formats
let g:Tex_FormatDependency_pdf = 'pdf'

" Build a pdf
let g:Tex_DefaultTargetFormat = 'pdf'
" let g:Tex_FoldedSections = 'part,chapter,section,%%fakesection,subsection,subsubsection,paragraph,class,activity,meeting,reflection'
