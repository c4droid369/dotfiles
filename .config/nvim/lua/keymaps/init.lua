local nmap = require("util.keymaps").n
local tmap = require("util.keymaps").t
local cmd = require("util.keymaps").cmd

nmap({
    ['j'] = "gj",
    ['k'] = "gk",
    ['<C-h>'] = "<C-w>h",
    ['<C-j>'] = "<C-w>j",
    ['<C-k>'] = "<C-w>k",
    ['<C-l>'] = "<C-w>l"
})

tmap({
    ['<Esc>'] = [[<C-\><C-n>]]
})
