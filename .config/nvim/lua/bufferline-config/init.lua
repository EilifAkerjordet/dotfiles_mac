require'bufferline'.setup{
  options = {
    view = "multiwindow",
    numbers = "none",
    number_style = "superscript",
    mappings = true,
    buffer_close_icon= '',
    modified_icon = '●',
    close_icon = '',
    left_trunc_marker = '',
    right_trunc_marker = '',
    max_name_length = 18,
    max_prefix_length = 15, -- prefix used when a buffer is deduplicated
    tab_size = 18,
    diagnostics = "nvim_lsp",
    show_buffer_close_icons = false,
    show_close_icon = false,
    show_tab_indicators = true,
    persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
    -- can also be a table containing 2 custom separators
    -- [focused and unfocused]. eg: { '|', '|' }
    separator_style = "thin",
    enforce_regular_tabs = true,
    always_show_bufferline = true,
    sort_by = 'directory',
  }
}
vim.api.nvim_set_keymap('n', 'R', ':BufferLineCycleNext<CR>', {silent = true})
vim.api.nvim_set_keymap('n','E', ':BufferLineCyclePrev<CR>', {silent = true})
vim.api.nvim_set_keymap('n','X', ':bd<CR>', {silent = true})
vim.api.nvim_set_keymap('n','be', ':BufferLineSortByExtension<CR>', {silent = true})
vim.api.nvim_set_keymap('n','bd', ':BufferLineSortByDirectory<CR>', {silent = true})
