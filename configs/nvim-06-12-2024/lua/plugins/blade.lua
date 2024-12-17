-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- return { "jwalton512/vim-blade", enabled = true }

return {
    'ricardoramirezr/blade-nav.nvim',
    dependencies = {
        'hrsh7th/nvim-cmp', 
        { "ms-jpq/coq_nvim", branch = "coq" }, 
    },
    ft = {'blade', 'php'},
    opts = {
        close_tag_on_complete = true,
    },
}
