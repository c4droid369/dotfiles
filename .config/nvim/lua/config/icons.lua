local status, icons = pcall(require, "mini.icons")
if not status then
    vim.api.nvim_echo({
        { "Failed to load mini.icons:\n", "ErrorMsg" },
        { status, "WarningMsg" }
    }, true, {})
end

icons.setup()
