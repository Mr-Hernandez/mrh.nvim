-- check for lazy.nvim and get it from github if it can't find it.
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
})
end
vim.opt.rtp:prepend(lazypath)

local opts = {
    defaults = {
        lazy = false,
    },
    install = {
        colorscheme = { "tokyonight" }
    },
    change_detection = {
        notify = false,
    },
    spec = {
        { import = "plugins" },
    },
}

require("lazy").setup(opts)

--require("lazy").setup({
--    defaults = { lazy = true },
--    install = {
--        colorscheme = { "tokyonight" }
--    },
--    change_detection = {
--        notify = false,
--    },
--    spec = {
--        { import = "plugins" },
--    },
--})
