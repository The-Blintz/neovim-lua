local utils = require("settings.functions")
local o = vim.opt
local wo = vim.wo
local fn = vim.fn
local cmd = vim.cmd  -- to execute Vim commands e.g. cmd('pwd')
local g = vim.g      -- a table to access global variables

-- ventana o windown
o.number = true
o.colorcolumn = "+1"
o.foldmethod = 'indent'
o.foldlevel = 1
o.list = false
o.foldnestmax = 10
o.signcolumn = 'yes'
o.relativenumber = true
o.foldenable = false
o.cursorline = true

-- Global
-- vim.opt.fillchars = { vert = ' ' }
o.showtabline = 2
o.scrolloff = 5
o.mouse = 'a'
o.backupcopy = 'yes'
o.undolevels = 1000
o.shortmess:append { c = true, S = true }
o.showmode = false
o.hidden = true
o.splitright = true
o.splitbelow = true
o.wrapscan = true
wo.wrap = true
o.backup = false
o.writebackup = false
o.showcmd = true
o.showmatch = true
o.ignorecase = true
o.hlsearch = true
o.smartcase = true
o.errorbells = false
o.joinspaces = false
o.title = true
o.lazyredraw = true
o.encoding = 'UTF-8'
o.completeopt = { 'menu', 'menuone', 'noselect' }
o.clipboard = 'unnamedplus'
o.listchars = { tab = ">>>", trail = "·", precedes = "←", extends = "→",eol = "↲", nbsp = "␣" }
o.laststatus = 3

-- Buffer
o.fileformat = 'unix'
o.tabstop = 2
o.spelllang = 'it'
o.softtabstop = 2
o.swapfile = false
o.undofile = false
o.expandtab = true
o.shiftwidth = 2
-- vim.notify = require("notify")