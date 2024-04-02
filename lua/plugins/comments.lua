return {
    'numToStr/Comment.nvim',
    opts = {
        -- add optoins here
    },
    lazy = false,
    config = function()
        require("Comment").setup()
    end,
}
