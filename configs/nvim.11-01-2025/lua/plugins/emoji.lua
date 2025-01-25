return {
  "allaman/emoji.nvim",
  version = "1.0.0",
  ft = { "markdown", "norg", "html" },
  dependencies = {
    -- util for handling paths
    "nvim-lua/plenary.nvim",
    -- optional for nvim-cmp integration
    "hrsh7th/nvim-cmp",
    -- optional for telescope integration
    "nvim-telescope/telescope.nvim",
  },
  opts = {
    -- default is false
    enable_cmp_integration = true,
    -- tùy chọn nếu thư mục cài đặt plugin của bạn
    -- không phải là vim.fn.stdpath("data") .. "/lazy/
    -- plugin_path = vim.fn.expand "$HOME/plugins/",
  },
  config = function(_, opts)
    require("emoji").setup(opts)
    -- optional for telescope integration
    local ts = require("telescope").load_extension "emoji"
    vim.keymap.set("n", "<leader>se", ts.emoji, { desc = "[S]earch [E]moji" })
  end,
}
