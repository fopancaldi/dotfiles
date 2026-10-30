return {
  "mfussenegger/nvim-lint",
  event = { "BufReadPre", "BufNewFile" },
  keys = {
    {
      "<leader>lf",
      function()
        require("lint").try_lint()
      end,
      desc = "Trigger linting for current file",
    },
  },
  config = function()
    local lint = require("lint")
    lint.linters_by_ft = {
      -- bash = { "shellcheck" },
      -- cmake = { "cmake_lint" },
      -- cpp = { "clangtidy" },
      --TODO: cuda
      haskell = { "hlint" },
      lua = { "luacheck" },
      matlab = { "mh_lint" },
      -- markdown = { "alex" },
      -- rust = { "clippy" },
      -- tex = { "vale" },
      -- yaml = { "yamllint" },
    }

    vim.api.nvim_create_autocmd({ "BufWritePost" }, {
      callback = function()
        require("lint").try_lint()
      end,
    })
  end,
}
