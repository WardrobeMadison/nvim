local status, _ = pcall(require, "venom")
if not status then
  return
end

venom = require("venom")

venom.setup({
  auto_activate = true,
  echo = true,
  quiet = false,
  symbol = "🐍",
  root_patterns = { ".venv", ".python-version" },
  use_tools = true,
  tools = {},
})
