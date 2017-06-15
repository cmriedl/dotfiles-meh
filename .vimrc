colorscheme obsidian 

filetype plugin on
filetype plugin indent on

syntax on
set number
set nowrap
set noswapfile
set nobackup

" gvim font
set guifont=xos4\ Terminus\ 10
" gvim remove/disable/hie all gui bloat
set go=c

" characters exceeding 80 columns per line get highlighted in red
augroup vimrc_autocmds
	autocmd BufEnter * hi OverColumnWidth guifg=#ff0000
	autocmd BufEnter * match OverColumnWidth /\%>80v.\+/
augroup END

" clang_complete
set completeopt-=preview
let g:clang_library_path='/usr/lib64/libclang.so.4'
