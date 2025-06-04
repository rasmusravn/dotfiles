return {
    "lervag/vimtex",
    lazy = false,
    config = function()
        vim.api.nvim_create_autocmd({ "FileType" }, {
            group = vim.api.nvim_create_augroup("lazyvim_vimtex_conceal", { clear = true }),
            pattern = { "bib", "tex" },
            callback = function()
                vim.wo.conceallevel = 2
            end,
        })

        vim.g.vimtex_mappings_disable = { ["n"] = { "K" } } -- disable `K` as it conflicts with LSP hover
        vim.g.vimtex_quickfix_method = vim.fn.executable("pplatex") == 1 and "pplatex" or "latexlog"
        vim.g.vimtex_view_general_viewer = "sumatrapdf_fix.sh"
        vim.g.vimtex_view_general_options = "-reuse-instance -forward-search @tex @line @pdf"
        vim.g.vimtex_view_method = "general"
        vim.g.vimtex_compiler_method = "latexmk"
        vim.g.vimtex_compiler_latexmk = {
            aux_dir = "./aux",
            out_dir = "./out",
            options = { "-pdf", "-shell-escape" },
        }
    end,
}
