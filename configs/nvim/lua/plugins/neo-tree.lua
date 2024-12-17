-- if false then return {} end

return {
  "neo-tree.nvim",
  opts = {
    filesystem = {
      filtered_items = {
        --visible = true,
        hide_dotfiles = true,
        hide_gitignored = true,
        hide_by_name = {
          ".github",
          ".gitignore",
          "package-lock.json",
          "README.md",
        },
        never_show = { ".git" },
      },
    },
  },
}
