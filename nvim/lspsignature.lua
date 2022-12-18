local status, _ = pcall(require, "lsp_signature")
if not status then
  return
end

require("lsp_signature").setup({})
