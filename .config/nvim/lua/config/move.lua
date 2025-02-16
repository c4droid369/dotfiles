local status, move = pcall(require, "mini.move")
if not status then
    vim.api.nvim_echo({
        { "Failed to load mini.move:\n", "ErrorMsg" },
        { status, "WarningMsg" }
    }, true, {})
end

move.setup()
