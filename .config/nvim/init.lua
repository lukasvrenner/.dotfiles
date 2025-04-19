vim.g.mapleader = " "
require("keymaps")

-- Options
vim.o.number = true -- show line numbers
vim.o.relativenumber = true -- show relative line numbers
vim.o.scl = "no" -- hide/show sign collumn

vim.opt.colorcolumn = "80"

vim.o.tabstop = 4 -- width of a tab
vim.o.softtabstop = 4 -- treat multiple spaces as tabs
vim.o.expandtab = true -- convert tabs to spaces
vim.o.shiftwidth = 4 -- set width for autoindent
vim.o.autoindent = true

vim.o.ttyfast = true -- increases scrolling speed
vim.o.cursorline = true -- highlight current line
vim.o.updatetime = 250

vim.o.hlsearch = false
vim.o.incsearch = true

vim.o.scrolloff = 4 -- starts scrolling ten lines before bottom or top
vim.o.swapfile = false
vim.termguicolors = true -- 256 color support
vim.cmd[[colorscheme gruvbox]]

vim.lsp.enable({ 'rust-analyzer' })

vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(ev)
        vim.cmd[[set completeopt+=menuone,noselect,popup]]
        local client = vim.lsp.get_client_by_id(ev.data.client_id)
        if client:supports_method('textDocument/completion') then
            vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
        end
        vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts) -- goes to declaration
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts) -- goes to definition
    end,
})
