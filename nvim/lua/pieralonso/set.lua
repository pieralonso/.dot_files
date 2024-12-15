-- Definir la tecla líder
vim.g.mapleader = " "  -- Esto es equivalente a 'let mapleader = " "'

-- Opciones generales
vim.o.cursorline = true         -- "set cursorline"
vim.o.expandtab = true          -- "set expandtab"
vim.o.autoindent = true         -- "set autoindent"
vim.o.shiftwidth = 4            -- "set shiftwidth=4"
vim.o.tabstop = 4               -- "set tabstop=4"
vim.o.number = true             -- "set number"
vim.o.relativenumber = true     -- "set relativenumber"
vim.o.backup = false            -- "set nobackup"
vim.o.ignorecase = true         -- "set ignorecase"
vim.o.showmatch = true          -- "set showmatch"
vim.o.hlsearch = true           -- "set hlsearch"
vim.o.syntax = "on"             -- "syntax on"



vim.keymap.set('n', '<leader>s', vim.cmd.w)
vim.keymap.set('n', '<Esc>', vim.cmd.noh)
