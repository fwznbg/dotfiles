return {
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  version = "*",
  event = "BufReadPre",
  opts = {
    options = {
      mode = "buffers",
      separator_style = "thin",
      diagnostic = "nvim_lsp",
      offsets = {
        {
          filetype = "NvimTree",
          text = "File explorer",
          text_align = "left",
          separator = true,
        },
      },
    },
  },
}
