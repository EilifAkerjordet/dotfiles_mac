local servers = require('config.LSP.servers')

-- @TODO install servers automatically

local lsp_installer = require("nvim-lsp-installer")

lsp_installer.on_server_ready(function(server)
  local opts = {}

  -- Setup lspconfig.
  if server.name == "efm" then
    opts = servers.efm
  else
		opts.capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

    opts.on_attach = function(client, bufnr)
      client.resolved_capabilities.document_formatting = false

			require "lsp_signature".on_attach()	

      require('navigator.lspclient.mapping').setup({
        client = client,
        bufnr = bufnr
        -- cap = capabilities,
      })
    end

  end

  server:setup(opts)
end)

require'navigator'.setup({
  transparency = 100,
  lsp_installer = true
  -- lsp = {
  --   format_on_save = false,
  --   disable_format_cap = servers.disable_fmt_cap_servers,
  --   -- Servers
  --   efm = servers.efm
  -- }
})

vim.api.nvim_set_keymap('n', '<Leader>m', ':LspKeymaps<CR>', { noremap = true, silent = true })
