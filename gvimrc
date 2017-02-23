if has("gui_macvim")
  " Font things
  set macligatures
  set guifont=Fira\ Code\ Retina:h13
  set linespace=3

  " Remap Cmd+T to Command T
  macmenu &File.New\ Tab key=<nop>
  map <D-t> :CtrlP<CR>

  " MacVim only options
  set anti                      " Anti-aliased fonts
  set fuoptions=maxvert,maxhorz " Full-screen properly

  if exists("DelimitMateTest")
    " Fixes delimitMate double matching with Cmd+Arrow
    imap <M-Left>  <Plug>delimitMateC-Left
    imap <M-Right> <Plug>delimitMateC-Right
    imap <D-Left>  <Plug>delimitMateHome
    imap <D-Right> <Plug>delimitMateEnd
  endif
end

set guioptions-=T  " Remove toolbar
set guioptions-=rL " Remove scrollbars

" Default size of window
set columns=140
set lines=60
set transp=0

" Good for switching between wide and skinny
function! Change_size()
 if !exists('w:wide')
   let w:wide = 0
 endif
 if w:wide == 1
   set columns=140
   let w:wide = 0
 else
   set columns=240
   let w:wide = 1
 endif
endfunction

map <leader>w :call Change_size()<CR>
