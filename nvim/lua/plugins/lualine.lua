return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "kyazdani42/nvim-web-devicons" },
    config = function()
      require("lualine").setup({
        options = {
          theme = "everforest", -- Passe das Theme an
          section_separators = "",
          component_separators = "",
        },
      })
    end,
  },
}
