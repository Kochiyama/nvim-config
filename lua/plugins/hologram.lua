return {
  'edluffy/hologram.nvim',
  config = function()
    require('hologram').setup {
      auto_display = false -- WIP automatic markdown image display, may be prone to breaking
    }
  end
}
