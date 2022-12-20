local status, _ = pcall(require, "venom")
if not status then
  return
end

vim.g.venom_loaded = 1 -- Before plugin loaded
venom = require("venom")
venom.setup({
  auto_activate = true,
  echo = true,
  quiet = false,
  symbol = "🍆💦😏",
  root_patterns = { ".env", ".venv", ".python-version" },
  use_tools = true,
  tools = {},
})
