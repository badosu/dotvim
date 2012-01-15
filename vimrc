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
	set guifont=Anonymous\ Pro\ 12
endif

" Set linenumbers on
set number

" Put linenumbers on left
set numberwidth=1

" Indentation
set shiftwidth=2
set tabstop=2

call pathogen#infect()

colorscheme jellybeans
