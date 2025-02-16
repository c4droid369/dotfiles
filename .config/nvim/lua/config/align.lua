local status, align = pcall(require, "mini.align")
if not status then
    vim.api.nvim_echo({
        { "Failed to load mini.align:\n", "ErrorMsg" },
        { status, "WarningMsg" }
    }, true, {})
end

align.setup()
