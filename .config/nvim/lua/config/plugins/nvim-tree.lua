-- 文件导航栏
return {
  "nvim-tree/nvim-tree.lua",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    local nvimtree = require("nvim-tree")

    -- 文档推荐设置 
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    nvimtree.setup({
      -- 导航栏设置
      view = {
        -- 宽度
        width = 35,
        -- 相对行数
        relativenumber = true,
        -- 定位
        side = "right",

      },
      -- 改变文件夹图标 
      renderer = {
        -- 开启缩进
        indent_markers = {
          enable = true,
        },
        icons = {
          glyphs = {
            folder = {
              arrow_closed = "", -- arrow when folder is closed
              arrow_open = "", -- arrow when folder is open
            },
          },
        },
      },
      -- disable window_picker for
      -- explorer to work well with
      -- window splits
      actions = {
        open_file = {
          window_picker = {
            enable = false,
          },
        },
      },
      -- 自定义不显示的文件或文件夹
      filters = {
        dotfiles = true,
        custom = { ".DS_Store" },
      },
      -- 不显示git状态图标
      git = {
        ignore = false,
      },
    })

  end
}
