return {
  "goolord/alpha-nvim",
  opts = function(_, opts) -- override the options using lazy.nvim
    opts.section.header.val = {
      " █████╗ ███╗   ██╗██╗  ██╗ ████████╗██╗   ██╗ █████╗ ███╗   ██╗",
      "██╔══██╗████╗  ██║██║  ██║ ═══██╔══╝██║   ██║██╔══██╗████╗  ██║",
      "███████║██╔██╗ ██║███████║    ██║   ██║   ██║███████║██╔██╗ ██║",
      "██╔══██║██║╚██╗██║██╔══██║    ██║   ██║   ██║██╔══██║██║╚██╗██║",
      "██║  ██║██║ ╚████║██║  ██║    ██║   ╚██████╔╝██║  ██║██║ ╚████║",
      "╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝  ╚═╝    ╚═╝    ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═══╝",
    }

    opts.section.buttons.val = {
      -- opts.button("fn", "  new file", ":ene <BAR> startinsert <CR>"),
      -- opts.button("ff", "  find file", ":Telescope find_files<CR>"),
      -- opts.button("fo", "  recent", ":Telescope oldfiles<CR>"),
      -- opts.button("s", "  settings", ":cd $HOME/.config/nvim | Telescope find_files<CR>"),
      opts.button("fk", "  Password Manager", ":e $GhiChu/docs/web/atd_pm.norg<CR>"),
      opts.button("s", "  settings", ":cd $HOME/.config/nvim | Telescope oldfiles<CR>"),
      opts.button("q", "  quit nvim", ":qa<CR>"),
      opts.button("n", "  Ghi Chú", ":cd $HOME/Atd/GhiChu | Telescope oldfiles<CR>"),
      opts.button("c", "  Code", ":cd $HOME/Dev | Telescope oldfiles<CR>"),
    }
  end,
}
