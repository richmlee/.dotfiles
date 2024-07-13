-- Aliases
local opt = vim.opt
local wo = vim.wo
local g = vim.g

-- General
g.python3_host_prog = '/usr/bin/python3'

wo.number = true

-- Indentation
local indent = 2

opt.cindent = true
opt.expandtab = true -- convert tabs to spaces
opt.shiftwidth = indent -- the number of spaces inserted for each indentation
opt.autoindent = true
opt.smartindent = true -- make indenting smarter
opt.softtabstop = indent -- when hitting <BS>, pretend like a tab is removed, even if spaces
opt.tabstop = indent -- insert 2 spaces for a tab
opt.shiftround = true -- use multiple of shiftwidth when indenting with "<" and ">"
