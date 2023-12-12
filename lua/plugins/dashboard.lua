local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

-- Set header
dashboard.section.header.val = {





"                                                                                    ",
"     ████████╗██╗░░██╗███████╗  ██████╗░██╗░░░░░██╗███╗░░██╗████████╗███████╗       ",
"     ╚══██╔══╝██║░░██║██╔════╝  ██╔══██╗██║░░░░░██║████╗░██║╚══██╔══╝╚════██║       ",
"     ░░░██║░░░███████║█████╗░░  ██████╦╝██║░░░░░██║██╔██╗██║░░░██║░░░░░███╔═╝       ",
"     ░░░██║░░░██╔══██║██╔══╝░░  ██╔══██╗██║░░░░░██║██║╚████║░░░██║░░░██╔══╝░░       ",
"     ░░░██║░░░██║░░██║███████╗  ██████╦╝███████╗██║██║░╚███║░░░██║░░░███████╗       ",
"     ░░░╚═╝░░░╚═╝░░╚═╝╚══════╝  ╚═════╝░╚══════╝╚═╝╚═╝░░╚══╝░░░╚═╝░░░╚══════╝       ",



}

-- Set menu
dashboard.section.buttons.val = {
  dashboard.button("e", "  > Nuevo Archivo", ":ene <BAR> startinsert <CR>"),
  dashboard.button("f", "  > Buscar Archivo", ":Telescope find_files<CR>"),
  dashboard.button("r", "  > Reciente", ":Telescope oldfiles<CR>"),
  dashboard.button("q", "  > Cerrar NVIM", ":qa<CR>"),
}

-- Send config to alpha
alpha.setup(dashboard.opts)

-- Disable folding on alpha buffer
vim.cmd([[
    autocmd FileType alpha setlocal nofoldenable
]])
