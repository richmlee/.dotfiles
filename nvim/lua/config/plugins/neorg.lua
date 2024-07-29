return {
  "nvim-neorg/neorg",
  lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
  version = "*", -- Pin Neorg to the latest stable release
  config = function()
    local neorg = require("neorg")
    neorg.setup({
      load = {
        ["core.defaults"] = {},
        ["core.concealer"] = {},
        ["core.dirman"] = {
          config = {
            workspaces = {
              notes = "~/notes", -- root, but should not keep files here?
              work = "~/notes/work",
              work_notes = "~/notes/work/notes",
              work_journal = "~/notes/work/journal",
              work_todos = "~/notes/work/todos",
              personal = "~/notes/personal",
              peronal_notes = "~/notes/personal/notes",
              personal_journal = "~/notes/personal/journal",
              personal_todos = "~/notes/personal/todos",
            },
          },
        },
      }
    })

    vim.opt.conceallevel = 2
  end,
}
