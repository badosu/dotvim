let g:Powerline_symbols = 'unicode'

filetype plugin on
filetype indent on

" Show statusbar
set laststatus=2
" Just vim
set nocompatible

" Incremental search
set incsearch

" gui config
if (has("gui_running"))
  " Nice font
  set guifont=Inconsolata-g\ 13
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
colorscheme distinguished

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

if (has("gui_running"))
  set cursorline
  set cursorcolumn
  hi CursorLine guibg=#090909 guifg=NONE
  hi CursorColumn guibg=#090909 guifg=NONE
end
