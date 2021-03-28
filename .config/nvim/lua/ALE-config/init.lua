vim.g.bufferline_echo = 0
vim.g.ale_fix_on_save = 1
vim.g.ale_linters_explicit = 1
vim.g.ale_typescript_prettier_use_local_config = 1

vim.g.ale_fixers = {
	typescript = { 'prettier', 'eslint' },
	typescriptreact = { 'prettier', 'eslint' },
	javascript = { 'prettier', 'eslint', 'standard' },
	javascriptreact = { 'prettier', 'eslint', 'standard' },
}
vim.g.ale_linters = {
	typescript = { 'eslint', 'tsserver' },
	typescriptreact = { 'eslint', 'tsserver' },
	javascript = { 'prettier', 'eslint', 'tsserver','standard' },
	javascriptreact = { 'prettier', 'eslint', 'tsserver','standard' },
}
