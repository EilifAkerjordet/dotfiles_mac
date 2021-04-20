local efm_settings = require('LSP.efm-general')
local lua_settings = require('LSP.lua-settings')
local utils = require('utils')

local function on_attach(client, bufnr)
  local function buf_set_keymap(...)
    vim.api.nvim_buf_set_keymap(bufnr, ...)
  end

  -- Prefer efm lint options over default for language server
  if utils.has_value(efm_settings.filetypes, client.name) then client.resolved_capabilities.document_formatting = false end

  -- Set some keybinds conditional on server capabilities
  local opts = { noremap = true, silent = true }
  if client.resolved_capabilities.document_formatting then
    buf_set_keymap("n", "<Leader>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
    utils.define_augroups({ _Format = { { 'BufWritePre', '*', 'lua vim.lsp.buf.formatting_sync(nil, 1000)' } } })
  end
end

local function make_config(server)
  if server == 'efm' then
    efm_settings.on_attach = on_attach
    return efm_settings
  end

  local capabilities = vim.lsp.protocol.make_client_capabilities()
  capabilities.textDocument.completion.completionItem.snippetSupport = true

  local config = { capabilities = capabilities, on_attach = on_attach }

  if server == "lua" then config.settings = lua_settings end

  -- Prefer efm lint options over default for language server
  if utils.has_value(efm_settings.filetypes, server) then
    if config.settings then
      config.settings.documentFormatting = false
    else
      config.settings = { documentFormatting = false }
    end
  end

  return config
end

-- lsp-install
local function setup_servers()
  require'lspinstall'.setup()

  -- get all installed servers
  local servers = require'lspinstall'.installed_servers()
  for _, server in pairs(servers) do
    local config = make_config(server)
    require'lspconfig'[server].setup(config)
  end
end

setup_servers()

-- Automatically reload after `:LspInstall <server>` so we don't have to restart neovim
require'lspinstall'.post_install_hook = function()
  setup_servers() -- reload installed servers
  vim.cmd("bufdo e") -- this triggers the FileType autocmd that starts the server
end
