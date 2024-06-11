-- 好看的标签页头部
return {
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  version = "*",
  opts = {
    options = {
      mode = "tabs",
      separator_style = "slant",
      -- 侧边栏配置
      -- 右侧让出 nvim-tree 的位置，显示文字 File Explorer
      offsets = {
        {
          filetype = "NvimTree",
          text = "File Explorer",
          highlight = "Directory",
          text_align = "right",
        },
      },
      -- 使用 nvim 内置 LSP 标识tab栏的错误
      diagnostics = "nvim_lsp",
      -- 显示 LSP 报错图标 
      --- count is an integer representing total count of errors
      --- level is a string "error" | "warning"
      --- diagnostics_dict is a dictionary from error level ("error", "warning" or "info")to number of errors for each level.
      --- this should return a string 
      --- Don't get too fancy as this function will be executed a lot
      diagnostics_indicator = function(count, level, diagnostics_dict, context)
        local icon = level:match("error") and " " or " "
        return " " .. icon .. count
      end
    },
  },
}
