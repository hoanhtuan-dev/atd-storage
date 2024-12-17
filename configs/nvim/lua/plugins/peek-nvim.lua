-- Markdown preview
return {
  "toppair/peek.nvim",
  -- enabled = false,
  event = { "VeryLazy" },
  build = "deno task --quiet build:fast",
  config = function()
    require("peek").setup({
      theme = 'light',
      app = 'chromium',

    })
    vim.api.nvim_create_user_command("PeekOpen", require("peek").open, {})
    vim.api.nvim_create_user_command("PeekClose", require("peek").close, {})
  end,

}
