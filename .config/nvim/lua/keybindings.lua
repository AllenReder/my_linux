vim.g.mapleader = " "
vim.g.maplocalleader = " "
local map = vim.api.nvim_set_keymap

-- jj 映射到 esc
map("i", "jj", "<Esc>", { noremap = true })

-- U 映射到'恢复'
map("n", "U", "<C-r>", { noremap = true })

-- 视觉行的上下移动
map("n", "j", 'gj', {})
map("n", "k", 'gk', {})

-- 自动补全大括号
-- map("i", "{", "{<CR>}<Esc>O", {})
-- 在 C++ 文件中按下 '{' 自动补全右大括号
vim.cmd([[
augroup CppAutoCloseBrace
    autocmd!
    autocmd FileType cpp inoremap <buffer> { {<CR>}<esc>k$a
augroup END
]])

--- easymotion
-- 快捷键映射
vim.api.nvim_set_keymap('n', '<Leader>l', '<Plug>(easymotion-lineforward)', {})
vim.api.nvim_set_keymap('n', '<Leader>j', '<Plug>(easymotion-j)', {})
vim.api.nvim_set_keymap('n', '<Leader>k', '<Plug>(easymotion-k)', {})
vim.api.nvim_set_keymap('n', '<Leader>h', '<Plug>(easymotion-linebackward)', {})
vim.api.nvim_set_keymap('n', '<Leader>w', '<Plug>(easymotion-w)', {})
vim.api.nvim_set_keymap('n', '<Leader>b', '<Plug>(easymotion-b)', {})

-- 设置
vim.g.EasyMotion_startofline = 0 -- 在JK运动中保持光标列位置
