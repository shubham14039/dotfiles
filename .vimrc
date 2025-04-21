
"Basic Settings
syntax enable
filetype plugin indent on
set number                " Show line numbers
set relativenumber        " Show relative line numbers
set autoindent            " Auto-indent new lines
set smartindent           " Smart auto-indenting
set expandtab             " Convert tabs to spaces
set tabstop=4             " Tab width is 4 spaces
set shiftwidth=4          " Indent width is 4 spaces
set showmatch             " Show matching brackets
set ruler                 " Show cursor position
set incsearch             " Incremental search
set hlsearch              " Highlight search results
set scrolloff=14          " Keep 14 lines above/below cursor when scrolling
set noshowmode
set nolist
set encoding=UTF-8

" New Functionalities
let mapleader="\<Space>"
set clipboard=unnamedplus
set undodir=~/.vim/undodir " Directory to save undo history
set undofile              " Save undo history to file
set splitright            " New splits open to the right

" Format options
set formatoptions+=c  " Auto-wrap comments using textwidth
set formatoptions+=q  " Allow formatting of comments with 'gq'

" Plugin Installation
call plug#begin('~/.vim/plugged')
" For vim kitty
Plug 'fladson/vim-kitty', { 'tag': '*' }

Plug 'morhetz/gruvbox'            " Gruvbox theme
Plug 'itchyny/lightline.vim'

" Plugin for rust
Plug 'rust-lang/rust.vim'

" Navigation
Plug 'junegunn/fzf'               " Fuzzy finder
Plug 'junegunn/fzf.vim'           " Vim integration
Plug 'preservim/nerdtree'         " File explorer

" Editing Features
Plug 'jiangmiao/auto-pairs'       " Auto-pair brackets
Plug 'honza/vim-snippets'         " Snippet support
Plug 'tpope/vim-commentary'  " Commenting plugin (gcc for line, gc for selection)
Plug 'tpope/vim-surround' " VIm surround

" For git and github
Plug 'tpope/vim-fugitive'

" Highlight when yanking
Plug 'machakann/vim-highlightedyank'

" Syntax Highlighting
Plug 'sheerun/vim-polyglot'
Plug 'octol/vim-cpp-enhanced-highlight'

" Code Quality
Plug 'dense-analysis/ale'         " Linter (Not being used currently)
call plug#end()

" Leader key keybindings
nnoremap <Leader>f :Files<CR>
nnoremap <Leader>b :Buffers<CR>
nnoremap <Leader>g :GFiles<CR>
nnoremap <Leader>q :cclose<CR>
nnoremap <Leader>e :NERDTreeToggle<CR>
nnoremap <Leader>r :Rg<CR>

vnoremap y "+y
nnoremap yy "+yy
nnoremap p "+p
nnoremap P "+P

" nnoremap <Esc> :nohlsearch<CR>
nnoremap <silent> <Esc> :noh<CR>

" FIle type syntax highlighting 
autocmd FileType python highlight link pythonSpaceError Normal

set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'powerline',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'filename', 'modified' ] ],
      \   'right': [ [ 'filetype','fileformat',  'fileencoding' ],
      \              [ 'lineinfo' ] ]
      \},
      \ 'component': {
      \   'readonly': '%{&readonly ? "[RO]" : ""}'
      \ }
\ }

" Highlight timing 
let g:highlightedyank_highlight_duration = 200

" Color scheme and termguicolors
set termguicolors
colorscheme gruvbox
set background=dark
