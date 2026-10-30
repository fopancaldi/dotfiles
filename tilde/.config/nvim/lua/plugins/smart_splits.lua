return {
  "mrjones2014/smart-splits.nvim",
  keys = {
    {
      "<A-h>",
      function()
        require("smart-splits").resize_left()
      end,
      -- TODO:
      desc = "TODO",
    },
    {
      "<A-j>",
      function()
        require("smart-splits").resize_down()
      end,
      -- TODO:
      desc = "TODO",
    },
    {
      "<A-k>",
      function()
        require("smart-splits").resize_up()
      end,
      -- TODO:
      desc = "TODO",
    },
    {
      "<A-l>",
      function()
        require("smart-splits").resize_right()
      end,
      -- TODO:
      desc = "TODO",
    },
  },
}
