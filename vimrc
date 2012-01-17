filetype plugin on
filetype indent on

" Show statusbar
set laststatus=2
" Just vim
set nocompatible
" No toolbar
set guioptions-=T
set guioptions-=m
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=b

if (has("gui_running"))
	" Nice font
	set guifont=Anonymous\ Pro\ 12
endif

" Set linenumbers on
set number

" Put linenumbers on left
set numberwidth=1

" Indentation
set shiftwidth=2
set tabstop=2

" Get bundles
call pathogen#infect()

colorscheme jellybeans

nnoremap <silent> <leader>T :TagbarToggle<CR>

" Dbext buffer with nice syntax
function! DBextPostResult(db_type, buf_nr)
	if a:db_type == 'MYSQL'
		set syntax=mysql
	endif
endfunction

" support for 256 color regardless of the termname
set t_Co=256

" completion
set wildmode=list:longest
set wildmenu
set wildignore=*.o,*.obj,*.swp,*~,#*#
