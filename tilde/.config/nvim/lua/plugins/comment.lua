-- TODO: Disable the commands like gcc that are still working for some reason
-- TODO: Read some documentation, then remove the "1" from the toggler keymaps
return {
  "numToStr/Comment.nvim",
  opts = {
    toggler = {
      line = "<leader>cl1",
      block = "<leader>cb1",
    },
    opleader = {
      line = "<leader>cl",
      block = "<leader>cb",
    },
    extra = {
      above = "<leader>cO",
      below = "<leader>co",
      eol = "<leader>cA",
    },
  },
}
