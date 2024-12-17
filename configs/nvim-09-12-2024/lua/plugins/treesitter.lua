-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE
--
-- -- Customize Treesitter
--
-- ---@type LazySpec
-- return {
--   "nvim-treesitter/nvim-treesitter",
--   opts = {
--     ensure_installed = {
--       "lua",
--       "vim",
--       -- add more arguments for adding more treesitter parsers
--     },
--   },
-- }

return {
    "nvim-treesitter/nvim-treesitter", build = ":TSUpdate",
    config = function ()
        local configs = require("nvim-treesitter.configs")

        -- blade syntaxe highlight
        local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
        parser_config.blade = {
            install_info = {
                url = "https://github.com/EmranMR/tree-sitter-blade",
                files = {"src/parser.c"},
                branch = "main",
            },
            filetype = "blade"
        }

        configs.setup({
            ensure_installed = {
                "c", "lua", "vim", "vimdoc", "query", "org", "javascript", "html", "php",
                "hlsl", "json", "http", "css", "scss", "typescript", "vala", "xml", "vue",
                "blade",
            },

            -- Install parsers synchronously (only applied to `ensure_installed`)
            sync_install = false,

            -- Automatically install missing parsers when entering buffer
            -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
            auto_install = true,

            highlight = {
                enable = true,

                -- Required for spellcheck, some LaTex highlights and
                -- code block highlights that do not have ts grammar
                additional_vim_regex_highlighting = {"org"},
            },
            indent = {
                enable = true,
            },
        })

        vim.cmd [[
            augroup BladeFiletypeRelated
            autocmd!
            autocmd BufNewFile,BufRead *.blade.php set ft=blade
            augroup END
            ]]

        -- Try to indent by 2 also here
        vim.cmd [[
            augroup BladeIndentation
            autocmd!
            autocmd FileType blade setlocal tabstop=2 shiftwidth=2 expandtab
            augroup END
            ]]
    end
}
