return {
  "mfussenegger/nvim-lint",
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
      bash = { "shellcheck" },
      cmake = { "cmake_lint" },
      --cpp = { "cpplint" },
      --TODO: cuda
      lua = { "luacheck" },
      markdown = { "alex" },
      rust = { "clippy" },
      tex = { "vale" },
      yaml = { "yamllint" },
    }

    vim.api.nvim_create_autocmd({ "BufWritePost" }, {
      callback = function()
        require("lint").try_lint()
      end,
    })
  end,
}
