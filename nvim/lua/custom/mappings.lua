---@type MappingsTable
local M = {}

M.general = {
  n = {
    ["gi"] = { "`^i"},
    ["<C-d>"] = { "<C-d>zz"},
    ["<C-u>"] = { "<C-u>zz"},
  },
}

M.telescope = {
  plugin = true,
  n = {
    ["<leader>fr"] = { "<cmd> Telescope resume <CR>", "resume find" },
  }
}

-- more keybinds!

return M
