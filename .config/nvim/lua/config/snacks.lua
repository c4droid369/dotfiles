local status, snacks = pcall(require, "snacks")
if not status then
    vim.api.nvim_echo({
        { "Failed to load snacks:\n", "ErrorMsg" },
        { status, "WarningMsg" }
    }, true, {})
end

snacks.setup({
    dashboard = { enabled = true },
    explorer = { enabled = true },
    picker = { enabled = true },
    notifier = {
        enabled = true,
        timeout = 3000
    }
})

require("keymaps.snacks")
require("autocmd.snacks")
