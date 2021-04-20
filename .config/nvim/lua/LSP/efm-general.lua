local python_arguments = {
  LintCommand = "flake8 --ignore=E501 --stdin-display-name ${INPUT} -",
  lintStdin = true,
  lintFormats = { "%f:%l:%c: %m" },
  formatCommand = "yapf --quiet",
  formatStdin = true
}

-- lua
local lua_arguments = {
  formatCommand = 'lua-format -i ' .. '--no-keep-simple-function-one-line ' .. '--column-limit=140 ' .. '--tab-width=2 ' ..
      '--indent-width=2 ' .. '--spaces-inside-table-braces',
  formatStdin = true
}

-- sh
local sh_arguments = {
  formatCommand = 'shfmt -ci -s -bn',
  formatStdin = true,
  LintCommand = 'shellcheck -f gcc -x',
  lintFormats = { '%f:%l:%c: %trror: %m', '%f:%l:%c: %tarning: %m', '%f:%l:%c: %tote: %m' }
}

-- tsserver/web javascript react, vue, json, html, css, yaml
local prettier = { formatCommand = "prettier --tab-width 2 --stdin-filepath ${INPUT}", formatStdin = true }
-- You can look for project scope Prettier and Eslint with e.g. vim.fn.glob("node_modules/.bin/prettier") etc. If it is not found revert to global Prettier where needed.
-- local prettier = {formatCommand = "./node_modules/.bin/prettier --stdin-filepath ${INPUT}", formatStdin = true}

local eslint = {
  lintCommand = "./node_modules/.bin/eslint -f unix --stdin --stdin-filename ${INPUT}",
  lintIgnoreExitCode = true,
  lintStdin = true,
  lintFormats = { "%f:%l:%c: %m" },
  formatCommand = "./node_modules/.bin/eslint --fix-to-stdout --stdin --stdin-filename=${INPUT}",
  formatStdin = true
}

local languages = {
  python = { python_arguments },
  lua = { lua_arguments },
  sh = { sh_arguments },
  html = { prettier },
  css = { prettier },
  json = { prettier },
  yaml = { prettier },
  php = { prettier },
  javascriptreact = { prettier, eslint },
  javascript = { prettier, eslint },
  typescript = { prettier, eslint },
  typescriptreact = { prettier, eslint }
}

-- Works well in conjnction with rooter vim.
local function get_current_workdir()
  return vim.fn.getcwd()
end

return {
  root_dir = get_current_workdir,
  init_options = { documentFormatting = true, codeAction = false },
  filetypes = vim.tbl_keys(languages),
  settings = { languages = languages }
}