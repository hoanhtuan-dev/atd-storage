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
          -- Macros
          ["Q"] = { "@q", desc = "Áp dụng lại macros" },

          -- Set file type
          ["<Leader>s"] = { "", desc = "Lệnh command" },
          ["<Leader>sf"] = { ":set filetype=", desc = "Đặt kiểu file" },
          -- Zenmode
          ["<Leader>z"] = { ":ZenMode<cr>", desc = "Tổng hợp" }

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
