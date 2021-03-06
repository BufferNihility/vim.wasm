if exists("b:did_ftplugin")
finish
endif
let b:did_ftplugin = 1
let s:cpo_save = &cpo
set cpo&vim
setlocal iskeyword=@,48-57,_,.
setlocal formatoptions-=t
setlocal commentstring=#\ %s
setlocal comments=:#',:###,:##,:#
if has("gui_win32") && !exists("b:browsefilter")
let b:browsefilter = "R Source Files (*.R)\t*.R\n" .
\ "Files that include R (*.Rnw *.Rd *.Rmd *.Rrst)\t*.Rnw;*.Rd;*.Rmd;*.Rrst\n" .
\ "All Files (*.*)\t*.*\n"
endif
let b:undo_ftplugin = "setl cms< com< fo< isk< | unlet! b:browsefilter"
let &cpo = s:cpo_save
unlet s:cpo_save
