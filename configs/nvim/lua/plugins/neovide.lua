if not vim.g.neovide then
	-- không làm gì nếu không tham gia phiên Neovide
	return {}
end

return {
	"AstroNvim/astrocore",
	---@type AstroCoreOpts
	opts = {
		options = {
			opt = { -- configure vim.opt options
				-- configure font
				guifont = "JetBrainsMono Nerd Font:h17",
				-- guifont = "MesloLGL Nerd Font:h15",
				-- guifont = "FiraCode Nerd Font:h15",
				linespace = 0,
			},
			g = { -- configure vim.g variables
				-- configure scaling
				neovide_scale_factor = 1.0,
				-- neovide_scale_factor = 0.65,
				-- configure padding
				neovide_padding_top = 0,
				neovide_padding_bottom = 0,
				neovide_padding_right = 0,
				neovide_padding_left = 0,
				neovide_hide_mouse_when_typing = true,
				neovide_remember_window_size = true,
			},
		},
	},
}
