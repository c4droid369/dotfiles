local autocmd = vim.api.nvim_create_autocmd
local group = vim.api.nvim_create_augroup("ConfigGroup", {})

autocmd("BufWritePre", {
    group = group,
    pattern = { "/tmp/*", "COMMIT_EDITMSG", "MERGE_MSG", "*.tmp", "*.bak" },
    command = "setlocal noundofile"
})
