return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "c_sharp",
      })
    end,
  },
  -- add any tools you want to have installed below
  {
    "mason-org/mason.nvim",
    opts = function(_, opts)
      --add omnisharp
      vim.list_extend(opts.ensure_installed, {
        "omnisharp",
      })
    end,
  },
}
