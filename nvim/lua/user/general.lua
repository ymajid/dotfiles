local cmd = vim.cmd
local opt = vim.opt
local lsp = require('lsp-zero')
local lualine = require('lualine')

lsp.setup()

opt.backup = false
opt.cmdheight = 2
opt.completeopt = {"menu","menuone","noselect"}
opt.fileencoding = "utf-8"
opt.hlsearch = true
opt.ignorecase = true
opt.showtabline = 2
opt.smartcase = true
opt.smartindent = true
opt.splitbelow = true
opt.splitright = true
opt.swapfile = false
opt.termguicolors = true
opt.timeoutlen = 300
opt.undofile = true
opt.updatetime = 300
opt.writebackup = false
opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.number = true
opt.relativenumber = true
opt.numberwidth = 4
opt.wrap = false

cmd [[colorscheme tokyonight]]
cmd [[set clipboard+=unnamedplus]]

lualine.setup{ options = { theme = 'tokyonight' } }
lsp.preset('recommended')
lsp.setup()
