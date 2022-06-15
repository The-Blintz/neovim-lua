local lsp_installer = require "nvim-lsp-installer"
local lsp = require('lsp-zero')

lsp.preset('recommended')
lsp.setup()