--- ALE
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

--- Seiya to enable transparent background in vim buffer
vim.g.seiya_target_groups = { 'guibg' }
vim.g.seiya_auto_enable = 1

--- Autocomplete
vim.g.completion_matching_strategy_list = { 'exact', 'substring', 'fuzzy' }
vim.g.completion_enable_snippet = 'UltiSnips'

--- Ranger
vim.g.rnvimr_enable_ex = 1
vim.g.rnvimr_enable_picker = 1

--- Bracey (html dev server)
vim.g.bracey_server_allow_remote_connections = 1

--- Quickscope highlight
vim.g.qs_highlight_on_keys = { 'f', 'F', 't', 'T' }

--- NerdCommenter
vim.g.NERDCreateDefaultMappings = 0
vim.g.NERDSpaceDelims = 1
vim.g.NERDCompactSexyComs = 1
vim.g.NERDDefaultAlign = 'left'
vim.g.NERDAltDelims_java = 1
vim.g.NERDCommentEmptyLines = 1
vim.g.NERDTrimTrailingWhitespace = 1
vim.g.NERDToggleCheckAllLines = 1

--- FireNVIM
vim.g.firenvim_config = {
	globalSettings = {
		alt = 'all'
	},
	localSettings = {
		['.*'] = {
			cmdline = 'firenvim',
			priority = 0,
			selector = 'textarea:not([readonly]):not([class="handsontableInput"]), div[role="textbox"]',
			takeover = 'always',
		},
		['.*notion\\.so.*'] = { priority = 9, takeover = 'never' },
		['.*docs\\.google\\.com.*'] = { priority = 9, takeover = 'never', },
		['.*facebook\\.com.*'] = { priority = 9, takeover = 'never' },
	}
}

--- Vimtex
vim.g.vimtex_view_method = 'zathura'
vim.g.tex_flavor  = 'latex'
vim.g.tex_conceal = ''
vim.g.vimtex_fold_manual = 1
vim.g.vimtex_latexmk_continuous = 1
vim.g.vimtex_compiler_progname = 'nvr'
