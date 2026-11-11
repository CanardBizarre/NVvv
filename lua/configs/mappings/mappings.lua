local map = require("configs.mappings.map")
local dap = require("dap")

-- Nvim

-- Nvim navigation
map("n", "<leader>pv", vim.cmd.Ex, { desc = "Goes back to Ntrew" })

-- Plugins related --

-- Telescope
map("n", "<C-p>", function()
  require("telescope.builtin").find_files()
end, { desc = "Find files" })

map("n", "<leader>fg", function()
  require("telescope.builtin").find_files()
end, { desc = "Live grep" })

-- NeoTree
map("n", "<C-n>", ":Neotree filesystem reveal left<CR>", { desc = "Open Neotree on the left" })

-- Nvim lsp-config
map("n", "K", vim.lsp.buf.hover, {})
map("n", "gd", vim.lsp.buf.definition, {})
map({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})

-- Nvim dap
map("n", "<leader>dt", dap.toggle_breakpoint, {})
map("n", "<leader>dc", dap.continue, {})
