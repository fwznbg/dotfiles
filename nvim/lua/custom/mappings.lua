---@type MappingsTable
local M = {}

M.general = {
  n = {
   ["gi"] = { "`^i"},
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
