-- PLUGINS

local vim = vim
local Plug = vim.fn["plug#"]

vim.call("plug#begin")

Plug("junegunn/fzf", { ["do"] = function()
  vim.fn["fzf#install"]()
end })
Plug("ibhagwan/fzf-lua")

Plug("lervag/vimtex")

Plug("m4xshen/hardtime.nvim")

vim.call("plug#end")


-- DEPENDENCIES

require("fzf-lua").setup({
  defaults = {
    git_icons = false,
    file_icons = false,
    fzf_colors = false,
  },
  winopts = {
    row = 1,
    col = 0,
    width = 1,
    height = 1,
    border = {"", "_", "", "", "", "", "", ""},
    preview = {
      layout = "vertical",
      vertical = "up:60%",
      border = "none",
    },
    treesitter = {
      enabled = false,
    }
  },
  grep = {
    RIPGREP_CONFIG_PATH = vim.env.RIPGREP_CONFIG_PATH,
  }
})
require("hardtime").setup()


-- COMMANDS

-- vim-plug implicitly runs filetype indent on + syntax enable => disable unwanted auto-indent
vim.cmd("filetype indent off")

-- define colorscheme
vim.cmd("colorscheme ansi")


-- OPTIONS

-- encoding
vim.opt.encoding = "utf-8"

-- display whitespace chars
vim.opt.list = true
vim.opt.listchars = { trail = ".", tab = ">-" }

-- highlight the current line
vim.opt.cursorline = true

-- show line numbers
vim.opt.number = true

-- disable the swapfile
vim.opt.swapfile = false

-- ignore case in search
vim.opt.ignorecase = true

-- new window left of the original after vertical split
vim.opt.splitright = true

-- new window below the original after horizontal split
vim.opt.splitbelow = true

-- sync clipboard also (+) with the unnamed " register
vim.opt.clipboard = "unnamedplus"

-- show current line number
vim.opt.number = true

-- show relative line numbers
vim.opt.relativenumber = true

-- no wrapping of long lines
vim.opt.wrap = false

-- default spacing
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2

-- REMAPS

-- clear in buffer search highlights
vim.keymap.set("n", "<Esc><Esc>", "<Cmd>noh<CR>")

-- remap Leader key to spacebar
vim.g.mapleader = "<Space>"

-- disable arrow keys
vim.keymap.set({"n", "i", "v", "!"}, "<Up>", "<Nop>")
vim.keymap.set({"n", "i", "v", "!"}, "<Down>", "<Nop>")
vim.keymap.set({"n", "i", "v", "!"}, "<Left>", "<Nop>")
vim.keymap.set({"n", "i", "v", "!"}, "<Right>", "<Nop>")

-- center cursor while scrolling
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- center cursor while searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- fzf
vim.keymap.set("n", "<C-t>", '<Cmd>lua require("fzf-lua").files()<CR>')
vim.keymap.set("n", "<C-g>", '<Cmd>lua require("fzf-lua").live_grep()<CR>')
