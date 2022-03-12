set ts=2 sw=2
set expandtab
set autoindent
set number
set mouse=a
set encoding=utf-8
autocmd InsertEnter,InsertLeave * set cul!

" set cursor to line when insert
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" puts Tab key to insert mode
map <Tab> a <Tab>

# plugins
call plug#begin()
Plug 'arcticicestudio/nord-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'bronson/vim-trailing-whitespace'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'justmao945/vim-clang'
Plug 'ycm-core/YouCompleteMe'
call plug#end()

set wildmode=longest:full,full

colorscheme nord
