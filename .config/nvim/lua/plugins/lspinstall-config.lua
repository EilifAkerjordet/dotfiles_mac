-- Configure lua language server for neovim development

-- Autoformat
--  vim.api.nvim_command([[
--   autocmd BufWritePre *.js :lua vim.lsp.buf.formatting_sync(nil, 100)
--   autocmd BufWritePre *.jsx :lua vim.lsp.buf.formatting_sync(nil, 100)
--   autocmd BufWritePre *.ts :lua vim.lsp.buf.formatting_sync(nil, 100)
--   autocmd BufWritePre *.tsx :lua vim.lsp.buf.formatting_sync(nil, 100)
--   autocmd BufWritePre *.lua :lua vim.lsp.buf.formatting_sync(nil, 100)
-- ]])



-- Enable lua for vim development
local lua_settings = {
  Lua = {
    runtime = {
      -- LuaJIT in the case of Neovim
      version = 'LuaJIT',
      path = vim.split(package.path, ';')
    },
    diagnostics = {
      -- Get the language server to recognize the `vim` global
      globals = {'vim'},
    },
    workspace = {
      -- Make the server aware of Neovim runtime files
      library = {
        [vim.fn.expand('$VIMRUNTIME/lua')] = true,
        [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true,
      },
    },
  }
}

-- lsp-install
local function setup_servers()
  require'lspinstall'.setup()

  -- get all installed servers
  local servers = require'lspinstall'.installed_servers()

  for _, server in pairs(servers) do
    local config = { on_attach = require'completion'.on_attach }

    -- language specific config
    if server == "lua" then
      config.settings = lua_settings
    end

    require'lspconfig'[server].setup(config)
  end
end

setup_servers()

-- Automatically reload after `:LspInstall <server>` so we don't have to restart neovim
require'lspinstall'.post_install_hook = function ()
  setup_servers() -- reload installed servers
  vim.cmd("bufdo e") -- this triggers the FileType autocmd that starts the server
end
