local wk = require("which-key")
local mappings = {
    q = {":q<cr>", "Salir"},
    w = {":w<cr>", "Guardar"},
    Q = {":wq<cr>", "Cerrar y Guardar"},
    x = {":bdelete<cr>", "Cerrar"},
    Q = {":e ~/.config/nvim/init.lua<cr>", "Editar configuracion"},
    f = {":Telescope find_files<cr>", "Telescope Find Files"},
    gr = {":Telescope live_grep<cr>", "Telescope Live Grep"},
}
local opts = {prefix = '<leader>'}
wk.register(mappings, opts)