--- Keybindings
function _G.c_l()
  return vim.fn["emmet#expandAbbrIntelligent"]("\\<C-l>")
end
vim.api.nvim_set_keymap('i', '<C-l>', 'v:lua.c_l()', { expr = true })
