local status, _ = pcall(require, "bufferline")
if not status then
  return
end

local status, _ = pcall(require, "nord")
if not status then
  return
end

local highlights = require("nord").bufferline.highlights({
  italic = false,
  bold = true,
})

require("bufferline").setup({
  options = {
    separator_style = "thin",
  },
  highlights = highlights,
})
