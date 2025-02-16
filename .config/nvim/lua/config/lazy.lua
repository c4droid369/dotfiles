local status, lazy = pcall(require, "lazy")
if not status then
    vim.api.nvim_echo({
        { "Failed to load lazy:\n", "ErrorMsg" },
        { status, "WarningMsg" }
    }, true, {})
end

lazy.setup({
    spec = {
        { import = "plugins.edit" },
        { import = "plugins.prog" },
        { import = "plugins.ui" }
    },
    defaults = { lazy = true },
    lockfile = vim.fn.stdpath("data") .. "/lazy/lazy-lock.json",
    checker = { enabled = true },
    performance = {
        rtp = {
            reset = true,
            disabled_plugins = {
                "gzip",
                "matchit",
                "matchparen",
                "netrwPlugin",
                "tarPlugin",
                "tohtml",
                "tutor",
                "zipPlugin"
            }
        }
    }
})
