local options = {
    formatters_by_ft = {
        lua = { "stylua" },
        css = { "prettierd" },
        html = { "prettierd" },
        typescript = { "prettierd" },
        javascript = { "prettierd" },
        python = { "ruff_format", "ruff_organize_imports" },
        yaml = { "yamlfmt" }
    },

    format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true,
    },
}

return options
