colorscheme dracula

filetype plugin on
filetype plugin indent on

syntax on
set number
set nowrap
set noswapfile
set nobackup

" characters exceeding 80 columns per line get highlighted in red
augroup vimrc_autocmds
	autocmd BufEnter * hi OverColumnWidth ctermfg=088
	autocmd BufEnter * match OverColumnWidth /\%>80v.\+/
augroup END

" clang_complete
set completeopt-=preview
let g:clang_library_path='/usr/lib64/libclang.so.4'
