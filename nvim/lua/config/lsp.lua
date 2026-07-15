vim.lsp.config("clangd", {
    cmd = { "clangd" },
    filetypes = { "c", "cpp" }
})

vim.lsp.config("rust_analyzer", {
    cmd = { "rust-analyzer" },
    filetypes = { "rust" }
})

vim.lsp.config("lua_ls", {
    cmd = {"lua-language-server"},
    filetypes = { "lua" },
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim" }
            }
        }
    }
})

vim.lsp.enable({
    "clangd",
    "rust_analyzer",
    "lua_ls"
})

vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(event)
        local opts = { buffer = event.buf }

        vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
        vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
        vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
    end
})
