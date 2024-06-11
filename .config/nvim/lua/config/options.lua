
-- 行号
vim.wo.number = true  -- 显示绝对行号在当前光标行 
vim.wo.relativenumber = true -- 显示相对行号
                       
-- 高亮所在行
vim.wo.cursorline = true 
      
-- 一个tab等于2个空格
vim.o.tabstop = 2
vim.bo.tabstop = 2
              
-- 缩进宽度为2个空格(使用tab键进行左移,右移时的移动长度)
vim.o.shiftwidth = 2
vim.bo.shiftwidth = 2

-- 将制表符扩展为空格
vim.o.expandtab = true
vim.bo.expandtab = true

-- 新行使用自动缩进对齐当前行
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.smartindent = true

-- 搜索大小写不敏感，除非包含大写
vim.o.ignorecase = true
vim.o.smartcase = true

-- split window 从下边和右边出现
vim.o.splitbelow = true
vim.o.splitright = true

-- 永远显示 tabline
vim.o.showtabline = 2

-- 显示左侧图标指示列
vim.wo.signcolumn = "yes"

-- 禁止折行
vim.wo.wrap = false

-- 右侧参考线，超过表示代码太长了，考虑换行
vim.wo.colorcolumn = "100"

-- 光标在行首尾时<Left><Right>可以跳到下一行
vim.o.whichwrap = '<h>,[l]'

-- 使用增强状态栏插件后不再需要 vim 的模式提示
vim.o.showmode = false

-- 样式
vim.o.background = "dark"
vim.o.termguicolors = true
vim.opt.termguicolors = true


