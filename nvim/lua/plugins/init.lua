local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Lazy.nvim setup
require("lazy").setup({
  require("plugins.gruvbox"),
  require("plugins.tmux-navigator"),
  require("plugins.lualine"),
  require("plugins.gitsigns"),
  require("plugins.telescope"),
  require("plugins.treesitter"),
})

