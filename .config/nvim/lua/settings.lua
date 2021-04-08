vim.cmd('set shortmess+=c') -- Don't pass messages to |ins-completion-menu|.
vim.cmd('set nocompatible')
vim.o.hidden = true -- Required to keep multiple buffers open multiple buffers
vim.wo.wrap = false -- Display long lines as just one line
vim.cmd('syntax on')
vim.o.fileencoding = "utf-8"
vim.o.cmdheight = 1
vim.o.splitbelow = true
vim.o.termguicolors = true
vim.o.splitright = true
vim.o.t_Co = "256"
vim.o.conceallevel = 0
vim.cmd('set nobackup')
vim.cmd('set nowritebackup')
vim.cmd('set completeopt=menuone,noinsert,noselect')
vim.cmd('set tabstop=2')
vim.cmd('set softtabstop=2')
vim.cmd('set shiftwidth=2')
vim.o.laststatus = 0
vim.bo.expandtab = true -- Converts tabs to spaces
vim.wo.number = true
-- vim.bo.smartindent = true -- Makes indenting smart
-- vim.bo.autoindent = true
vim.wo.relativenumber = true
vim.wo.cursorline = true
vim.o.showmode = false
vim.o.backup = false
vim.o.writebackup = false
vim.wo.signcolumn = "no"
vim.o.updatetime = 300
vim.o.timeoutlen = 300
vim.o.clipboard = "unnamedplus" -- Copy paste between vim and everything else
