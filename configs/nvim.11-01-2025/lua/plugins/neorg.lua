return {
  "nvim-neorg/neorg",
  version = "*",
  event = "VeryLazy",
  dependencies = {
    { "nvim-treesitter/nvim-treesitter" },
    {
      "AstroNvim/astrocore",
      opts = {
        mappings = {
          n = {
            -- Neorg
            ["<Leader><Space>"] = { "", desc = "Neorg" },
            ["<Leader><space>j"] = { ":Neorg journal<cr>", desc = "Neorg Journal" },
            ["<Leader><space>n"] = { ":Neorg <cr>", desc = "Telescope Neorg" },
            ["<Leader><space>i"] = { ":Neorg index<cr>", desc = "Neorg Index" },
            ["<Leader><space>m"] = { ":Neorg inject-metadata<cr>", desc = "Neorg Metadata" },
            ["<Leader><space>w"] = { ":Neorg workspace", desc = "Neorg Workspace" },
            ["<Leader><space>c"] = { ":Neorg toggle-concealer<cr>", desc = "Neorg Toggle Concealer" },
            ["<Leader><space>h"] = { ":e ~/Atd/GhiChu/docs/neorg.norg<cr>", desc = "Neorg Help" },
          },
        },
      },
    },
  },
  config = function()
    require("neorg").setup {
      load = {
        ["core.defaults"] = {},
        ["core.concealer"] = {},
        ["core.keybinds"] = {},
        ["core.ui.calendar"] = {},
        ["core.esupports.metagen"] = {
          config = {
            author = "AnhTuanDev",
            timezone = "local",
          },
        },
        ["core.completion"] = {
          config = {
            engine = "nvim-cmp",
          },
        },
        ["core.journal"] = {
          config = {
            -- Journal folder name
            journal_folder = "nhatKy",
          },
        },
        ["core.dirman"] = {
          config = {
            workspaces = {
              main = "~/Atd",
              GhiChu = "~/Atd/GhiChu",
              notes = "~/Atd/GhiChu/notes",
              docs = "~/Atd/GhiChu/docs",
              blog = "~/Atd/GhiChu/blog",
              vh3m = "~/Atd/vh3m",
            },
            default_workspace = "vh3m",
          },
        },
        ["core.summary"] = {},
      },
    }
    vim.wo.conceallevel = 3
  end,
}
