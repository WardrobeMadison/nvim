local status, lualine = pcall(require, "lualine")
if not status then
  return
end

local status, lualine = pcall(require, "nvim-gps")
if not status then
  return
end

local lualine_theme = require("lualine.themes.nord")
local gps = require("nvim-gps")

local new_colors = {
  blue = "#5E81AC",
  green = "#A3BE8C",
  violet = "#B48EAD",
  yellow = "#EBCB8B",
  black = "#2E3440",
  orange = "#D08770",
}

-- change nightlfy theme colors
lualine_theme.normal.a.bg = new_colors.orange
lualine_theme.insert.a.bg = new_colors.green
lualine_theme.visual.a.bg = new_colors.violet
lualine_theme.command = {
  a = {
    gui = "bold",
    bg = new_colors.yellow,
    fg = new_colors.black,
  },
}

-- configure lualine with modified theme
lualine.setup({
  options = {
    theme = lualine_theme,
  },
})
