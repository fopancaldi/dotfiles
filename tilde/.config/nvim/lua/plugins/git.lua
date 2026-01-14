return {
  "lewis6991/gitsigns.nvim",
  lazy = false,
  keys = {
    {
      "<leader>Gd",
      function()
        require("gitsigns").diffthis(nil, { split = "rightbelow" })
        vim.api.nvim_command("wincmd l")
      end,
      desc = "View changes of this file",
    },
  },
  opts = {},
}
