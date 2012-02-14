let g:Powerline_symbols = 'unicode'

filetype plugin on
filetype indent on

" Show statusbar
set laststatus=2
" Just vim
set nocompatible

" gui config
if (has("gui_running"))
  " Nice font
  set guifont=Anonymous\ Pro\ 14
  " No fancy stuff
  set guioptions-=T
  set guioptions-=m
  set guioptions-=l
  set guioptions-=L
  set guioptions-=r
  set guioptions-=b
endif

" Set linenumbers on
set number

" Put linenumbers on left
set numberwidth=1

" Indentation
set shiftwidth=2
set tabstop=2

" whitespaces, not tabs
set expandtab

" Display tabs and trailing spaces
set list
set listchars=tab:¬\ ,trail:.

" Get bundles
call pathogen#infect()

" Nice colorscheme
colorscheme jellybeans

" Dbext buffer with nice syntax
function! DBextPostResult(db_type, buf_nr)
  if a:db_type == 'MYSQL'
    set syntax=mysql
  elseif a:db_type == 'SQLSRV'
    set syntax=sqlserver
  endif
endfunction

" use 256 color regardless of termname
set t_Co=256

" completion
set wildignore=*.o,*.obj,*.swp,*~,#*#
