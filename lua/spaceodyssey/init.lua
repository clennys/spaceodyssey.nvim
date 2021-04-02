local utils = require('spaceodyssey.utils')
local color_defs = require('spaceodyssey.definitions')

local highlight = vim.api.nvim_set_hl

-- Color namespace
local ns = utils.set_namespace("spaceodyssey")

-- Set highlights
for color_name, param in pairs(color_defs) do
  highlight(ns, color_name, param)
end
