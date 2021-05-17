" set-up basic vim syntax
syntax on " highlights syntax
set noswapfile " disables the swapfile
set hlsearch " highlights all search results
set ignorecase " ignores case in search
set incsearch " shows search results as typing
set scrolloff=4 " number of lines before scrolling
set number " shows line number
set relativenumber " shows line numbers relative to current line
set tabstop=4 softtabstop=4 " number of lines that <tab> counts for
set shiftwidth=4 " number of spaces to use for each autoindent
set expandtab " uses spaces for tabs
set smartindent " automatically inserts one extra level of insertion

" remappings
inoremap jk <ESC>
nnoremap <C-p> :GFiles<Cr>
nnoremap <C-g> :Rg<Cr>
" Vim plugins
set rtp +=~/.vim
call plug#begin('~/.vim/autoload')
" Color scheme / aesthetic
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'itchyny/lightline.vim'

" Grep
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" LSP
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Misc
Plug 'alvan/vim-closetag'
Plug 'psliwka/vim-smoothie'
call plug#end()

" Color scheme
set termguicolors
colorscheme onehalflight 

" Status bar
let g:lightline = {
      \ 'colorscheme': 'onehalfdark',
      \ }

" Coc extensions
let g:coc_global_extensions = [
    \ 'coc-css',
    \ 'coc-json', 
    \ 'coc-pairs',
    \ 'coc-prettier',
    \ 'coc-tsserver'
    \ ]
let g:closetag_filetypes = 'html,jsx,javascript,tsx'
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ 'typescriptreact': 'jsxRegion,tsxRegion',
    \ 'javascriptreact': 'jsxRegion',
    \ }
let g:closetag_shortcut = '>'
