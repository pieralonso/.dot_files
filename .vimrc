set relativenumber
syntax on

call plug#begin()

Plug 'wojciechkepka/vim-github-dark'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'w0rp/ale'
Plug 'eslint/eslint'


call plug#end()

colorscheme ghdark

nnoremap <C-t> :NERDTreeToggle<CR>

