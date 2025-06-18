-- LEADER key = SPACE
vim.g.mapleader = " "

vim.api.nvim_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })

vim.keymap.set('n', '<leader>t', ':split | :terminal<CR>i', { noremap = true, silent = true })

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Vim editor configuration
vim.cmd('set number')
vim.cmd('set tabstop=4')
vim.cmd('set shiftwidth=4')

require("lazy").setup("plugins")

-- Autoshows diagnostics next to the code lines
vim.diagnostic.config({
  virtual_text = true, -- Show inline diagnostics
  signs = true,        -- Show signs in the gutter
  update_in_insert = false,
  underline = true,
  severity_sort = true,
  float = {
    source = "always",
    border = "rounded",
  },
})
-- Show diagnostic in a floating window on CursorHold
vim.api.nvim_create_autocmd("CursorHold", {
  callback = function()
    vim.diagnostic.open_float(nil, { focus = false })
  end,
})
