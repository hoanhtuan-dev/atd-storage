if true then return {} end

return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    autocmds = {
      -- các lệnh tự động được tổ chức thành các nhóm để dễ quản lý
      autosetfiletype = {
        -- mỗi augroup chứa một danh sách các lệnh tự động
        {
          -- tạo một autocmd mới trong sự kiện ""
          event = "User",
          -- mẫu là tên của các sự kiện tự động ra lệnh cho người dùng của chúng tôi
          pattern = "*.org", -- triggered when vim.t.bufs is updated
          -- mô tả hay
          desc = "Set filetype org sang norg",
          -- thêm autocmd vào augroup mới tạo
          group = "autosetfiletype",
          callback = function()
            --
          end,
        },
      },

    },
  },
}
