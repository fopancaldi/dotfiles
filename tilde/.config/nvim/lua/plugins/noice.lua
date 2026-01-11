return {
  "folke/noice.nvim",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
  },
  event = "VeryLazy",
  keys = { {
    "<leader>nd",
    "<cmd>NoiceDismiss<CR>",
    mode = "n",
    desc = "Dismiss Noice messages",
  } },
  opts = {
    -- See https://github.com/folke/noice.nvim/wiki/Configuration-Recipes#use-a-classic-bottom-cmdline-for-search
    cmdline = {
      format = {
        search_down = {
          view = "cmdline",
        },
        search_up = {
          view = "cmdline",
        },
      },
    },
  },
}
