return {
    {
        "stevearc/conform.nvim",
        event = 'BufWritePre',
        opts = require "configs.conform",
        lazy = false
    },

    {
        "neovim/nvim-lspconfig",
        config = function()
            require "configs.lspconfig"
        end,
    },

    { "nvzone/volt", lazy = false },
    { "nvzone/menu", lazy = false, event = "VimEnter" },

    {
        "andweeb/presence.nvim",
        lazy = false,
        opts = {
            main_image = "file"
        },
    },

    {
        "nvim-telescope/telescope-ui-select.nvim",
        config = function()
            require("telescope").setup({
                defaults = {
                    hidden = true,
                    no_ignore = true,
                    file_ignore_patterns = {
                        "node_modules",
                        ".ruff_cache",
                        ".git/",
                        ".mypy_cache",
                    },
                },
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown({})
                    },
                },
            })
            require("telescope").load_extension("ui-select")
        end,
    },

    { import = "nvchad.blink.lazyspec" },

    {
        "hrsh7th/cmp-nvim-lsp",
        enabled = true,
    },

    {
        "rachartier/tiny-code-action.nvim",
        dependencies = {
            { "nvim-lua/plenary.nvim" },
            { "nvim-telescope/telescope.nvim" },
        },
        event = "LspAttach",
        opts = {
            picker = "telescope",
            opts = {
                layout_strategy = "vertical",
                layout_config = {
                    width = 0.7,
                    height = 0.9,
                    preview_cutoff = 1,
                    preview_height = function(_, _, max_lines)
                        local h = math.floor(max_lines * 0.5)
                        return math.max(h, 10)
                    end,
                },
            },
        },
    }

}
