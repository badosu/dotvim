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
  "Use text dialogs
  set guioptions+=c
  "No menu
  set guioptions-=m
  "No toolbar
  set guioptions-=T
  "No fancy tabs
  set guioptions-=e
  "No left scrollbar, even in vsplits
  set guioptions-=L
  "No right scrollbar
  set guioptions-=r
  "No bottom scrollbar
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

autocmd FileType ruby highlight OverLength ctermbg=red ctermfg=white guibg=#592929
autocmd FileType ruby match OverLength /\%80v.\+/

let g:dbext_default_profile_seeding = 'type=MYSQL:user=sledge:passwd=pass2sledge:dbname=seeding_development:extra=-t'
let g:dbext_default_profile_sledge = 'type=MYSQL:user=sledge:passwd=pass2sledge:dbname=sledge_development:extra=-t'
let g:dbext_default_profile_sledge_tst = 'type=MYSQL:user=sledge:passwd=pass2sledge:dbname=sledge_testing:extra=-t'
let g:dbext_default_profile_raw_seed = 'type=MYSQL:user=sledge:passwd=pass2sledge:dbname=raw_seed:extra=-t'
let g:dbext_default_profile_stats_seed = 'type=MYSQL:user=sledge:passwd=pass2sledge:dbname=stats_seed:extra=-t'
