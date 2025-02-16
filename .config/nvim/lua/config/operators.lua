local status, operators = pcall(require, "mini.operators")
if not status then
    vim.api.nvim_echo({
        { "Failed to load mini.operators:\n", "ErrorMsg" },
        { status, "WarningMsg" }
    }, true, {})
end

operators.setup()
