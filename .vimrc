" general configuration
set number autoindent tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
syntax on
colorscheme elflord

" position cursor on previously opened file
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

" in makefiles, don't expand tabs to spaces, since actual tab characters are
" needed, and have indentation at 8 chars to be sure that all indents are tabs
" (despite the mappings later):
autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=0
