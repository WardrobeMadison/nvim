local neorg_status, neorg = pcall(require, "neorg")
if not neorg_status then
  return
end

neorg.setup({
  load = {
    ["core.defaults"] = {},
    ["core.norg.dirman"] = {
      config = {
        workspaces = {
          work = "~/Projects/.notes/projects",
          meetings = "~/Projects/.notes/meetings",
          learning = "~/Projects/.notes/learning",
        },
      },
    },
    ["core.norg.concealer"] = {},
    ["core.norg.completion"] = {
      config = {
        engine = "nvim-cmp",
      },
    },
    ["core.export"] = {},
    ["core.export.markdown"] = {},
    ["core.fs"] = {},
  },
})
