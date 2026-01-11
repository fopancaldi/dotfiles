return {
  "iamcco/markdown-preview.nvim",
  ft = { "markdown" },
  keys = {
    { "<leader>mpt", "<cmd>MarkdownPreviewToggle<cr>", desc = "Toggle markdown preview" },
  },
  config = function()
    vim.fn["mkdp#util#install"]()
  end,
}
