set expandtab
set autoindent
set colorcolumn=80
set shiftwidth=4
set tabstop=4
set number relativenumber 
set nobackup
set ignorecase
set cursorline
set showmatch
set hlsearch
set cursorcolumn
highlight ColorColumn ctermbg=7
syntax on

call plug#begin()

Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'vim-airline/vim-airline'
Plug 'joshdick/onedark.vim'
Plug 'tpope/vim-fugitive'
Plug 'prabirshrestha/vim-lsp'
Plug 'prettier/vim-prettier'
Plug 'terryma/vim-multiple-cursors'
Plug 'Exafunction/codeium.vim', { 'branch': 'main' }
Plug 'junegunn/fzf.vim'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'dense-analysis/ale'

call plug#end()

if executable('pylsp')
    " pip install python-lsp-server
    au User lsp_setup call lsp#register_server({
                \ 'name': 'pylsp',
                \ 'cmd': {server_info->['pylsp']},
                \ 'allowlist': ['python'],
                \ })
endif

function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    setlocal signcolumn=yes
    if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
    nmap <buffer> gd <plug>(lsp-definition)
    nmap <buffer> gs <plug>(lsp-document-symbol-search)
    nmap <buffer> gS <plug>(lsp-workspace-symbol-search)
    nmap <buffer> gr <plug>(lsp-references)
    nmap <buffer> gi <plug>(lsp-implementation)
    nmap <buffer> gt <plug>(lsp-type-definition)
    nmap <buffer> <leader>rn <plug>(lsp-rename)
    nmap <buffer> [g <plug>(lsp-previous-diagnostic)
    nmap <buffer> ]g <plug>(lsp-next-diagnostic)
    nmap <buffer> K <plug>(lsp-hover)
    nnoremap <buffer> <expr><c-f> lsp#scroll(+4)
    nnoremap <buffer> <expr><c-d> lsp#scroll(-4)

    let g:lsp_format_sync_timeout = 1000
    autocmd! BufWritePre *.rs,*.go call execute('LspDocumentFormatSync')

    " refer to doc to add more commands
endfunction

augroup lsp_install
    au!
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END

let g:lsp_diagnostics_enabled = 0
let g:ale_sign_error = '=>' 
let g:ale_sign_warning = '=>'
let g:codeium_disable_bindings = 1
let g:airline_theme="onedark"
let g:gh_color = "soft"


colorscheme habamax 
nnoremap <C-j> :term<CR>
nnoremap <C-p> :Files<CR>
nnoremap <C-s> :w<CR>
nnoremap <C-h> :noh<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :highlight ALEVirtualTextError ctermbg=darkred<CR>
imap <script><silent><nowait><expr> <C-g> codeium#Accept()
imap <C-x>   <Cmd>call codeium#Clear()<CR>

