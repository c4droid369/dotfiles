local status, comment = pcall(require, "mini.comment")
if not status then
    vim.api.nvim_echo({
        { "Failed to load mini.comment:\n", "ErrorMsg" },
        { status, "WarningMsg" }
    }, true, {})
end

comment.setup()
