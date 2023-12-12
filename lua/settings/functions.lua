local cmd = vim.cmd
local fn = vim.fn

local M = {}

-- verificar si una variable no está vacía ni es nula
M.isNotEmpty = function(s)
    return s ~= null and s ~= ""
end

-- alternar la lista de arreglos rápidos
M.toogle_qf = function()
    local windows = fn.getwininfo()
    local qf_exists = false
    for _, win in pairs(windows) do
        if win["quickfix"] == 1 then
            qf_exists = true
        end
    end
    if M.isNotEmpty(fn.getqflist()) then
        cmd("copen")
    end
end
--Lua:
return M