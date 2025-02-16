local status, git = pcall(require, "mini.git")
if not status then
    vim.api.nvim_echo({
        { "Failed to load mini.git:\n", "ErrorMsg" },
        { status, "WarningMsg" }
    }, true, {})
end

git.setup()
