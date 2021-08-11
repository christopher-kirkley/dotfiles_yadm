" source $HOME/.config/nvim/plug-config/lsp-config.vim
" source $HOME/.config/nvim/plug-config/compe-config.lua

" curl reminder to download plug.vim

set nocompatible		" be iMproved, required
filetype off			" required

call plug#begin('~/.config/nvim/plugged')

Plug 'tpope/vim-surround'

Plug 'tpope/vim-commentary'

" LSP
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'

" Snippets
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'rafamadriz/friendly-snippets'

" Emmet-vim HTML autocomplete
Plug 'mattn/emmet-vim'

" gruvbox theme
Plug 'morhetz/gruvbox'

" Initialize plugin system
call plug#end()

colorscheme gruvbox

set number

syntax enable
filetype plugin indent on		"required


" lua << EOF
" require'lspconfig'.pyright.setup{}
" EOF
lua require'lspconfig'.pyright.setup{on_attach=require'completion'.on_attach}
lua require'lspconfig'.tsserver.setup{on_attach=require'completion'.on_attach}
lua require'lspconfig'.html.setup{on_attach=require'completion'.on_attach;}


" Use completion-nvim in every buffer
autocmd BufEnter * lua require'completion'.on_attach()
" luafile $HOME/.config/nvim/plug-config/lsp_config.lua
" luafile $HOME/.config/nvim/plug-config/compe-config.lua
" source $HOME/.config/nvim/plug-config/lsp_config.vim
" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" Avoid showing message extra message when using completion
set shortmess+=c

imap <tab> <Plug>(completion_smart_tab)
imap <s-tab> <Plug>(completion_smart_s_tab)

" INDENTS
autocmd Filetype javascript setlocal ts=4 sw=4 sts=4 expandtab
autocmd Filetype html setlocal ts=2 sw=2 sts=2
autocmd Filetype php setlocal ts=4 sw=4 sts=4 expandtab
autocmd BufRead,BufNewFile *.css setlocal tabstop=2 shiftwidth=2 softtabstop=2


"""SNIPPET SETTING
let g:completion_enable_snippet = 'vim-vsnip'



