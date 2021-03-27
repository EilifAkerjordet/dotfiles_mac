--- Misc
vim.g.bufferline_echo = 0

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
