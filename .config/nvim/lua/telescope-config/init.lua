local actions = require('telescope.actions')

local opts = { noremap=true }
vim.api.nvim_set_keymap("n", "<C-p>", "<cmd>lua require('telescope.builtin').find_files()<CR>", opts)
vim.api.nvim_set_keymap("n", "<C-x>", "<cmd>lua require('telescope.builtin').live_grep()<CR>", opts)
vim.api.nvim_set_keymap("n", "/", "<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>", opts)

vim.api.nvim_set_keymap("n", "<Leader>gs", "<cmd>lua require('telescope.builtin').git_status()<CR>", opts)
vim.api.nvim_set_keymap("n", "<Leader>gb", "<cmd>lua require('telescope.builtin').git_branches()<CR>", opts)
-- vim.api.nvim_set_keymap("n", "<Leader>gc", "<cmd>lua require('telescope.builtin').git_commits()<CR>", opts)

-- Global remapping
------------------------------
require('telescope').setup{
  defaults = {
    file_sorter = require('telescope.sorters').get_fzy_sorter,
    prompt_prefix = ' >',
    color_devicons = true,
    file_previewer   = require('telescope.previewers').vim_buffer_cat.new,
    grep_previewer   = require('telescope.previewers').vim_buffer_vimgrep.new,
    qflist_previewer = require('telescope.previewers').vim_buffer_qflist.new,
    mappings = {
      i = {
        ["<C-v>"] = actions.select_vertical,
        ["<C-h>"] = actions.select_horizontal,
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous
    },
  }
 },
  extensions = {
    fzy_native = {
      override_generic_sorter = false,
      override_file_sorter = true,
    }
  }
}
require('telescope').load_extension('fzy_native')

