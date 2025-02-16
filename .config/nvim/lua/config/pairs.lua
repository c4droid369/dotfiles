local status, pairs = pcall(require, "mini.pairs")
if not status then
    vim.api.nvim_echo({
        { "Failed to load mini.pairs:\n", "ErrorMsg" },
        { status, "WarningMsg" }
    }, true, {})
end

pairs.setup()
