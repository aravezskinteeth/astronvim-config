-- LspInstall
require'lspinstall'.setup()
local servers = require'lspinstall'.installed_servers()
local lspconfig = require'lspconfig'
for _, server in pairs(servers) do
    lspconfig[server].setup{}
end

lspconfig.lua.setup {
  settings = {
    Lua = {
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {
          'vim',
          's',
          't',
          'i',
          'd',
          'f',
          'ls',
          'sn',
          'fmt',
          'fmta',
          'rep'
        },
      },
    },
  },
}
