local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("settings")
require("keymaps")

require("lazy").setup({
  require("plugins.nvim-tree"),
  require("plugins.cmp"),
  require("plugins.mason"),
  require("plugins.mason-lspconfig"),
  require("plugins.lspconfig"),
  require("plugins.gruvbox"),
  require("plugins.tmux-navigator"),	
  require("plugins.lualine"),
  require("plugins.gitsigns"),
  require("plugins.telescope"),
  require("plugins.treesitter"),
})

