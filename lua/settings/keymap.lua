vim.g.mapleader = ' '
local map = vim.api.nvim_set_keymap
map('n', '<C-h>', '<C-w>h', {noremap = true, silent = false})
map('n', '<C-l>', '<C-w>l', {noremap = true, silent = false})
map('n', '<C-j>', '<C-w>j', {noremap = true, silent = false})
map('n', '<C-k>', '<C-w>k', {noremap = true, silent = false})

map('n', '<leader>,', ':NvimTreeToggle<CR>', {noremap = true, silent = false})
map('n', '<leader>r', ':NvimTreeRefresh<CR>', {noremap = true, silent = false})
map('n', '<leader>m', ':GitMessenger<CR>', {noremap = true, silent = false})
map('n', '<leader>n', ':NvimTreeFindFile<CR>', {noremap = true, silent = false})

map('n', '<leader>k', ':BufferLineCycleNext<CR>', {noremap = true, silent = false})
map('n', '<leader>j', ':BufferLineCyclePrev<CR>', {noremap = true, silent = false})

map('n', '<leader>t', ':CommentToggle<CR>', {noremap = true, silent = false})
map('v', '<leader>t', ':CommentToggle<CR>', {noremap = true, silent = false})

map('n', '<leader>fi', [[<cmd>lua require('telescope.builtin').lsp_implementations()<cr>]], {noremap = true, silent = false})
map('n', '<leader>fd', [[<cmd>lua require('telescope.builtin').lsp_definitions()<cr>]], {noremap = true, silent = false})
-- nnoremap('<leader>fi', [[<cmd>lua require('telescope.builtin').lsp_implementations()<cr>]])
-- nnoremap('<leader>fd', [[<cmd>lua require('telescope.builtin').lsp_definitions()<cr>]])
-- " These commands will navigate through buffers in order regardless of which mode you are using
-- " e.g. if you change the order of buffers :bnext and :bprevious will not respect the custom ordering
-- nnoremap <silent>[b :BufferLineCycleNext<CR>
-- nnoremap <silent>b] :BufferLineCyclePrev<CR>

-- nmap <Leader>t :CommentToggle<cr>
-- vmap <Leader>t :CommentToggle<cr>

-- " These commands will move the current buffer backwards or forwards in the bufferline
-- nnoremap <silent><mymap> :BufferLineMoveNext<CR>
-- nnoremap <silent><mymap> :BufferLineMovePrev<CR>

-- " These commands will sort buffers by directory, language, or a custom criteria
-- nnoremap <silent>be :BufferLineSortByExtension<CR>
-- nnoremap <silent>bd :BufferLineSortByDirectory<CR>
-- nnoremap <silent><mymap> :lua require'bufferline'.sort_buffers_by(function (buf_a, buf_b) return buf_a.id < buf_b.id end)<CR>

-- nnoremap <C-n> :NvimTreeToggle<CR>
-- nnoremap <leader>r :NvimTreeRefresh<CR>
-- nnoremap <leader>n :NvimTreeFindFile<CR>
