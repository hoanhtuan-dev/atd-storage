-- CẢNH BÁO: XÓA DÒNG NÀY ĐỂ KÍCH HOẠT TỆP NÀY
-- if true then
-- 	return {}
-- end

-- AstroCommunity: nhập bất kỳ mô-đun cộng đồng nào vào đây
-- Chúng tôi nhập tệp này vào `lazy_setup.lua` trước thư mục `plugins/`.
-- Điều này đảm bảo rằng các thông số kỹ thuật được xử lý trước bất kỳ plugin nào của người dùng.

---@type LazySpec
return {
	"AstroNvim/astrocommunity",
	{ import = "astrocommunity.editing-support.zen-mode-nvim" },
	-- { import = "astrocommunity.note-taking.obsidian-nvim" },
	{ import = "astrocommunity.recipes.vscode-icons" },
	{ import = "astrocommunity.pack.blade" },
}
