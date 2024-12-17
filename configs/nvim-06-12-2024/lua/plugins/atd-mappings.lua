return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        n = {
          -- Di chuyển dòng
          ["<A-j>"] = { "<cmd>m .+1<cr>==", desc = "Chuyển dòng xuống 1" },
          ["<A-k>"] = { "<cmd>m .-2<cr>==", desc = "Chuyển dòng lên 1" },
          ["C-s"] = { ":w", desc = "Ghi lại" },
          [";"] = { ":", desc = "command" },
          -- Macros
          ["Q"] = { "@q", desc = "Áp dụng lại macros" },

          -- Set file type
          ["<Leader>s"] = { "", desc = "Lệnh command" },
          ["<Leader>sf"] = { ":set filetype=", desc = "Đặt kiểu file" },
          -- Zenmode
          ["<Leader>z"] = { ":ZenMode<cr>", desc = "Tổng hợp" },

          -- Navigation
          ["<Leader>["] = { ":bnext<cr>", desc = "Next buffer" },
          ["<Leader>]"] = { ":bprevious<cr>", desc = "Previous buffer" },
          ["<Leader>t1"] = { ":1ToggleTerm direction=horizontal<cr>", desc = "Bật term horizontal 1" },
          ["<Leader>t2"] = { ":2ToggleTerm direction=horizontal<cr>", desc = "Bật term horizontal 2" },
          ["<Leader>t3"] = { ":3ToggleTerm direction=horizontal<cr>", desc = "Bật term horizontal 3" },

        },
        v = {
          ["<A-j>"] = { ":m '>+1<cr>gv=gv", desc = "Chuyển dòng xuống 1" },
          ["<A-k>"] = { ":m '<-2<cr>gv=gv", desc = "Chuyển dòng lên 1" },
          ["<Leader>v"] = { ":Translate vi<cr>", desc = "translate vi" },
          ["<Leader>e"] = { ":Translate en<cr>", desc = "translate en" },
        },

        x = {
          ["Q"] = { ":norm @q<CR>", desc = "Áp dụng lại macros cho dòng đã chọn" }
        }
      },
    },
  },
}
