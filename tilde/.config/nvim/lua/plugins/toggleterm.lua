return {
  "akinsho/toggleterm.nvim",
  version = "*",
  opts = {},
  keys = {
    {
      "<leader>tt",
      function()
        local ntpath = require("neo-tree.sources.manager").get_state("filesystem").path
        if ntpath == nil then
          ntpath = os.getenv("HOME")
        end
        vim.api.nvim_command("ToggleTerm direction=float dir=" .. ntpath)
      end,
      desc = "Toggle floating terminal",
    },
  },
}
