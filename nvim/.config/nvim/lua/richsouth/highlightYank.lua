vim.api.nvim_create_autocmd('TextYankPost', {
    group = init_lua_augroup,
    callback = function()
        vim.highlight.on_yank({ timeout = 100 })
    end,
})


