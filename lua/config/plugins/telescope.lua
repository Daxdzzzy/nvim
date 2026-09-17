return {
  'nvim-telescope/telescope.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
  },
  config = function()
    local telescope = require('telescope')
    local builtin = require('telescope.builtin')
    local actions = require('telescope.actions')

    telescope.setup({
      defaults = {
        layout_strategy = "horizontal",
        layout_config = {
          horizontal = {
            width = 0.9,
            height = 0.9,
            preview_width = 0.5,
          },
        },
        mappings = {
          i = {
            ["<C-p>"] = actions.move_selection_previous,
            ["<C-n>"] = actions.move_selection_next,
            ["<C-c>"] = actions.close,
          },
          n = {
            ["q"] = actions.close,
          },
        },
      },
      pickers = {
        find_files = {
          hidden = true,
        },
      },
    })

    telescope.load_extension('fzf')

    vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Find files' })
    vim.keymap.set('n', '<leader>fg', builtin.git_files, { desc = 'find git files' })
  end,
}
