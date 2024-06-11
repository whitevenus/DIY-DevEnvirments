-- 提供更好的代码高亮，缩进等功能
return {
	"nvim-treesitter/nvim-treesitter",
	-- event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",
	dependencies = {
		"windwp/nvim-ts-autotag",
	},
	config = function()
		-- 导入 nvim-treesitter 插件进行配置
		local treesitter = require("nvim-treesitter.configs")

		-- 配置 treesitter
		treesitter.setup({
			-- 开启代码高亮
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
			-- 开启代码缩进（在visual模式下按=可实现代码缩进）
			indent = { enable = true },
			-- 开启自动闭合tag(需要 nvim-ts-autotag plugin)
			autotag = {
				enable = true,
			},
			-- 确保下面这些语言解析器被安装
			ensure_installed = {
				"markdown",
				"markdown_inline",
				"lua",
				"vim",
				"vimdoc",
				"c",
				"cpp",
			},
			-- 开启增量选择模块
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<CR>",
					node_incremental = "<CR>",
					scope_incremental = "<BS>",
					node_decremental = "<BS>",
				},
			},
		})
	end,
}
