if true then return {} end -- CẢNH BÁO: XÓA DÒNG NÀY ĐỂ KÍCH HOẠT TỆP NÀY

-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "lua",
      "vim",
      "md",
    },
  },
}
