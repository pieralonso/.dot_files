let mapleader = " "
set expandtab
set autoindent
set colorcolumn=108
set shiftwidth=4
set tabstop=4
set number relativenumber 
set nobackup
set ignorecase
set cursorline
set showmatch
set hlsearch
syntax on
"autocmd VimEnter * highlight ALEVirtualTextError ctermbg=darkred



call plug#begin()

Plug 'preservim/nerdtree'
Plug 'joshdick/onedark.vim'
Plug 'mattn/emmet-vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'vim-airline/vim-airline'
Plug 'prabirshrestha/vim-lsp'
Plug 'prettier/vim-prettier'
Plug 'terryma/vim-multiple-cursors'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf.vim'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
"Plug 'dense-analysis/ale'

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
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

let g:lsp_diagnostics_enabled = 1
let g:lsp_diagnostics_highlights_enabled = 1 
let g:lsp_diagnostics_highlights_insert_mode_enabled = 1
let g:lsp_diagnostics_virtual_text_insert_mode_enabled = 1
let g:lsp_diagnostics_virtual_text_align = "right"
let g:lsp_diagnostics_virtual_text_prefix = "⚠  "

" let g:ale_sign_error = '✖' 
" let g:ale_sign_warning = '⚠️ '
let g:lightline = {
      \ 'colorscheme': 'onedark',
      \ }
let g:airline_theme='onedark'

let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"


colorscheme onedark 
hi Normal guibg=NONE ctermbg=NONE
nnoremap <leader>j :term<CR>
nnoremap <leader>p :Files<CR>
nnoremap <leader>t :NERDTreeToggle<CR>
"nnoremap <leader>l :highlight ALEVirtualTextError ctermbg=darkred<CR>

