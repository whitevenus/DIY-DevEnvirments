-- 设置引导键为空格
vim.g.mapleader = " "

-- 简写
local keymap = vim.keymap 






-----------------------
-- 通用的key-mapping --
-----------------------

-- 使用jk退出插入模式
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- 清空所有搜索高亮
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- delete single character without copying into register
-- keymap.set("n", "x", '"_x')

-- 数字自增或自减
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) 
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) 












-------------
-- 窗口管理--
-------------

-- 垂直分割窗口
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
-- 水平分割窗口
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
-- 将所有窗口等大
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) 
-- 关闭当前窗口
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

-- 打开一个新tab
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
-- 关闭当前tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
-- 去下一个tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
-- 去上一个tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) 
-- 在新tab中打开当前buffer(当前文件)
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) 











---------------
-- 插件快捷键
---------------


-- vim-tree 快捷键
-- 打开文件浏览
keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" }) 
-- 在当前文件上打开文件浏览     
keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle file explorer on current file" }) 
-- 关闭文件浏览
keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" }) 
-- 刷新文件浏览    
keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" })




-- telescope 快捷键
-- 模糊查找 cwd 中的文件
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
-- 模糊查找最近文件     
keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
-- 查找cwd中的字符串 
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
-- 查找cwd中光标下的字符串
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })



-- nvim-maximizer快捷键
keymap.set("n", "<leader>sm", "<cmd>MaximizerToggle<cr>", { desc = "Maximizer/minimize a split"})
