require "nvchad.options"

local o = vim.o

o.cursorlineopt ='both' -- to enable cursorline!
o.swapfile = false
o.signcolumn = "no"
o.wrap = false

vim.lsp.set_log_level("off")
