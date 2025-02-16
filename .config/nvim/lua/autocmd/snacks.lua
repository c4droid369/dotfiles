local snacks = require("snacks")

vim.api.nvim_create_autocmd("User", {
    pattern = "VeryLazy",
    callback = function()
        _G.dd = function(...)
            snacks.debug.inspect(...)
        end
        _G.bt = function()
            snacks.debug.backtrace()
        end
        vim.print = _G.dd

        snacks.toggle.option("spell", { name = "Spelling" }):map("<leader>us")
        snacks.toggle.option("wrap", { name = "Wrap" }):map("<leader>uw")
        snacks.toggle.option("relativenumber", { name = "Relative Number" }):map("<leader>uL")
        snacks.toggle.diagnostics():map("<leader>ud")
        snacks.toggle.line_number():map("<leader>ul")
        snacks.toggle.option("conceallevel", { off = 0, on = vim.o.conceallevel > 0 and vim.o.conceallevel or 2 }):map("<leader>uc")
        snacks.toggle.treesitter():map("<leader>uT")
        snacks.toggle.option("background", { off = "light", on = "dark", name = "Dark Background" }):map("<leader>ub")
        snacks.toggle.inlay_hints():map("<leader>uh")
        snacks.toggle.indent():map("<leader>ug")
        snacks.toggle.dim():map("<leader>uD")
    end
})
