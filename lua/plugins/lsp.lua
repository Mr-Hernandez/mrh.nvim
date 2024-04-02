return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",    
        "williamboman/mason-lspconfig.nvim",
    },
    config = function()
        require("mason").setup()
        require("mason-lspconfig").setup({
            ensure_installed = {
                "clangd",
                "cmake",
                "autotools_ls",
                "lua_ls",
                "pylsp",
                "jsonls",
            },
        })
        require'lspconfig'.clangd.setup{}
        require'lspconfig'.cmake.setup{}
        require'lspconfig'.autotools_ls.setup{}
        require'lspconfig'.lua_ls.setup{}
        require'lspconfig'.pylsp.setup{}
        require'lspconfig'.jsonls.setup{}
    end,
}
