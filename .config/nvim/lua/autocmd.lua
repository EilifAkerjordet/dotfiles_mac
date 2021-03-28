local function define_augroups(definitions) -- {{{1
    -- Create autocommand groups based on the passed definitions
    --
    -- The key will be the name of the group, and each definition
    -- within the group should have:
    --    1. Trigger
    --    2. Pattern
    --    3. Text
    -- just like how they would normally be defined from Vim itself
    for group_name, definition in pairs(definitions) do
        vim.cmd('augroup ' .. group_name)
        vim.cmd('autocmd!')

        for _, def in pairs(definition) do
            local command = table.concat(vim.tbl_flatten {'autocmd', def}, ' ')
            vim.cmd(command)
        end

        vim.cmd('augroup END')
    end
end

define_augroups({
  qs_colors = {
    {'ColorScheme', '*', "highlight QuickScopePrimary guifg='#afff5f' gui=underline ctermfg=155 cterm=underline"},
    {'ColorScheme', '*', "highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline"},
  },
	-- packer_auto_update = {
  --   { 'BufWritePost', 'plugins-setup.lua', 'PackerCompile' },
	-- }
})
vim.cmd("highlight QuickScopePrimary guifg='#afff5f' gui=underline ctermfg=155 cterm=underline")
vim.cmd("highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline")
