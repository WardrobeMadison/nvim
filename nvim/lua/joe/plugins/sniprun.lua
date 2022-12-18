local status, _ = pcall(require, "sniprun")
if not status then
  return
end

require("sniprun").setup({})
