return {
  "folke/zen-mode.nvim",
  dependencies = {
    {
      "AstroNvim/astrocore",
      opts = {
        mappings = {
          n = {
            -- Zenmode
            ["<Leader>zz"] = { ":ZenMode<cr>", desc = "Chế độ Zen" }
          },
        },
      },
    },
  },
  opts = {
    window = {
      width = 72,
    }
  },
}
