local status, _ = pcall(vim.cmd, "colorscheme nord")
if not status then
  print("Colorscheme not found!") -- print error if colorscheme not installed
  return
end

vim.g.nord_contrast = true
vim.g.nord_borders = true
vim.g.nord_disable_background = false
vim.g.nord_italic = false
vim.g.nord_uniform_diff_background = false
vim.g.nord_bold = true

-- Load the colorscheme
require("nord").set()

local highlights = require("nord").bufferline.highlights({
  italic = true,
  bold = true,
})

require("bufferline").setup({
  options = {
    separator_style = "thin",
  },
  highlights = highlights,
})
