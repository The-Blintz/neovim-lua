local lsp_installer = require "nvim-lsp-installer"
require("nvim-lsp-installer").setup({
    -- automatic_installation = true, -- automatically detect which servers to install (based on which servers are set up via lspconfig)
    ui = {
        icons = {
            server_installed = "✓",
            server_pending = "➜",
            server_uninstalled = "✗"
        }
    }
})
    local lsp = require('lsp-zero')

    lsp.preset('recommended')
    lsp.nvim_workspace()
    lsp.setup()


--sudo pacman -Syu lua-language-server
-- require'lspconfig'.sumneko_lua.setup({
--     settings = {
--       Lua = {
--         diagnostics = {
--           globals = { "vim" },
--         },
--         workspace = {
--           -- Make the server aware of Neovim runtime files
--           library = vim.api.nvim_get_runtime_file("", true),
--         },
--         telemetry = {
--             enable = false,
--         },
--       },
--     },
--   })


  require'lspconfig'.sumneko_lua.setup {
    on_attach = on_attach,
    capabilities = capabilities,
  
    settings = {
      Lua = {
        diagnostics = {
          globals = { "vim" },
        },
        workspace = {
          library = {
            vim.api.nvim_get_runtime_file("", true),
          },
          maxPreload = 100000,
          preloadFileSize = 10000,
        },
        telemetry = {
          enable = false,
      },
      },
    },
  }
  
  require'lspconfig'.bashls.setup{ capabilities = capabilities }
  
  --sudo pacman -Syu ccls
  require'lspconfig'.ccls.setup{}
  
  --npm i -g vscode-langservers-extracted
  require'lspconfig'.cssls.setup{}
  
  -- npm install -g dockerfile-language-server-nodejs
  require'lspconfig'.dockerls.setup{}
  
  --GO111MODULE=on go get golang.org/x/tools/gopls@latest
  require'lspconfig'.gopls.setup{}

  require'lspconfig'.intelephense.setup{
    on_attach = on_attach,
    flags = lsp_flags,
  }
  
  --npm i -g vscode-langservers-extracted
  require'lspconfig'.html.setup{}
  
  --npm i -g vscode-langservers-extracted
  require'lspconfig'.jsonls.setup{}
  
  -- npm -i -g pyright
  require'lspconfig'.pyright.setup({
    on_attach = python_attach,
    capabilities = capabilities
  })
  
  --npm i -g typescript typescript-language-server
  require'lspconfig'.tsserver.setup{}
  
  --paru cmake-language-server
  require'lspconfig'.cmake.setup{}
  
  --sudo pacman -Syu rust-analyzer
  require'lspconfig'.rust_analyzer.setup{}
  
  --paru marksman-bin
  --markdown
  require'lspconfig'.marksman.setup{}
  
  --paru phpactor
  --php
  require'lspconfig'.phpactor.setup{}
  
  --install.packages("languageserver") (from within R)
  require'lspconfig'.r_language_server.setup{}
  
  --gem install sorbet
  --ruby
  require'lspconfig'.sorbet.setup{}
  
  -- npm i -g sql-language-server
  require'lspconfig'.sqlls.setup{}