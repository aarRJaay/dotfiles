
-- Prime's Telescope Maps - https://github.com/ThePrimeagen/.dotfiles/blob/master/nvim/.config/nvim/after/plugin/keymap/telescope.lua

local Remap = require("richsouth.keymap")
local nnoremap = Remap.nnoremap

nnoremap("<C-p>", ":Telescope")
nnoremap("<leader>ts", function()
    require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})
end)
nnoremap("<C-p>", function()
    require('telescope.builtin').git_files()
end)
nnoremap("<Leader>tf", function()
    require('telescope.builtin').find_files()
end)

nnoremap("<leader>pw", function()
    require('telescope.builtin').grep_string { search = vim.fn.expand("<cword>") }
end)
nnoremap("<leader>tb", function()
    require('telescope.builtin').buffers()
end)
nnoremap("<leader>th", function()
    require('telescope.builtin').help_tags()
end)

-- TODO: Fix this immediately
nnoremap("<leader>vwh", function()
    require('telescope.builtin').help_tags()
end)

nnoremap("<leader>vrc", function()
    require('theprimeagen.telescope').search_dotfiles({ hidden = true })
end)
nnoremap("<leader>va", function()
    require('theprimeagen.telescope').anime_selector()
end)
nnoremap("<leader>vc", function()
    require('theprimeagen.telescope').chat_selector()
end)
nnoremap("<leader>gc", function()
    require('theprimeagen.telescope').git_branches()
end)
nnoremap("<leader>gw", function()
    require('telescope').extensions.git_worktree.git_worktrees()
end)
nnoremap("<leader>gm", function()
    require('telescope').extensions.git_worktree.create_git_worktree()
end)
nnoremap("<leader>td", function()
    require('theprimeagen.telescope').dev()
end)
