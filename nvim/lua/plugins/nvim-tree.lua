return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local tree = require("nvim-tree")

    -- This function sets your custom keymaps
    local function on_attach(bufnr)
      local api = require("nvim-tree.api")
      local opts = function(desc)
        return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
      end

      vim.keymap.set("n", "p", api.node.open.preview, opts("Preview"))
      -- Open file
      vim.keymap.set("n", "e", api.node.open.edit, opts("Open"))
      -- Toggle node
      vim.keymap.set("n", "<C-e>", api.node.navigate.parent_close, opts("Close Parent"))
    end

    tree.setup({
      disable_netrw = true,
      hijack_netrw = true,
      sort_by = "name",
      on_attach = on_attach,
      view = {
        width = 30,
        side = "left",
      },
      renderer = {
        highlight_opened_files = "all",
      },
      filters = {
        dotfiles = false,
        custom = {},
      },
    })

    -- Toggle tree with <leader>e
    vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { noremap = true, silent = true })
  end,
}

