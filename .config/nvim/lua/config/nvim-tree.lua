require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {        
    width = 24,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})


