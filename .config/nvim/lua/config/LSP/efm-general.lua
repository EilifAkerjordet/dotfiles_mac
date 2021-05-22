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

local function prettier()
  local prettier_config = { formatCommand = "prettier --tab-width 2 --stdin-filepath ${INPUT}", formatStdin = true }
  local local_prettier = vim.fn.glob("node_modules/.bin/prettier")
  if local_prettier ~= '' then prettier_config.formatCommand = local_prettier .. " --stdin-filepath ${INPUT}" end
  return prettier_config
end

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
  html = { prettier() },
  css = { prettier() },
  json = { prettier() },
  yaml = { prettier() },
  php = { prettier() },
  javascriptreact = { prettier(), eslint },
  javascript = { prettier(), eslint },
  typescript = { prettier(), eslint },
  typescriptreact = { prettier(), eslint },
  vue = { prettier(), eslint },
  svelte = { prettier(), eslint }
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
