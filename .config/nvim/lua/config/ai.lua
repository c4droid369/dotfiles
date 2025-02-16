local status, ai = pcall(require, "mini.ai")
if not status then
    vim.api.nvim_echo({
        { "Failed to load mini.ai:\n", "ErrorMsg" },
        { status, "WarningMsg" }
    }, true, {})
end

ai.setup()
