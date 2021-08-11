set number

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" PLUGINS

" Surround.vim is all about surroundings: parentheses, brackets, quotes, XML tags, and more. The plugin provides mappings to easily delete, change and add such surroundings in pairs.
Plug 'tpope/vim-surround'

" Comment stuff out. Use gcc to comment out a line (takes a count), gc to comment out the target of a motion (for example, gcap to comment out a paragraph), gc in visual mode to comment out the selection, and gc in operator pending mode to target a comment. 
Plug 'tpope/vim-commentary'

" Emmet-vim HTML autocomplete
Plug 'mattn/emmet-vim'

" pangloss js highlighting
Plug 'pangloss/vim-javascript'

" supertab
Plug 'ervandew/supertab'



"Initialize plugin system
call plug#end()


" INDENTS
autocmd Filetype javascript setlocal ts=4 sw=4 sts=4 expandtab
autocmd Filetype html setlocal ts=2 sw=2 sts=2
autocmd Filetype php setlocal ts=4 sw=4 sts=4 expandtab
autocmd BufRead,BufNewFile *.css setlocal tabstop=1 shiftwidth=1 softtabstop=1
