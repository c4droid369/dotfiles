local status, surround = pcall(require, "mini.surround")
if not status then
    vim.api.nvim_echo({
        { "Failed to load mini.surround:\n", "ErrorMsg" },
        { status, "WarningMsg" }
    }, true, {})
end

surround.setup()
