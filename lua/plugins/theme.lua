return {

  ------------------------------------------------------------------
  -- TOKYONIGHT THEME
  ------------------------------------------------------------------
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      style = "night",
      transparent = false,
      terminal_colors = true,
    },
    config = function(_, opts)
      require("tokyonight").setup(opts)
    end,
  },

  ------------------------------------------------------------------
  -- SOLARIZED OSAKA THEME
  ------------------------------------------------------------------
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = false,
      terminal_colors = true,
    },
    config = function(_, opts)
      require("solarized-osaka").setup(opts)
    end,
  },

  ------------------------------------------------------------------
  -- ACTIVE THEME (ONLY ONE SHOULD BE UNCOMMENTED)
  ------------------------------------------------------------------
  {
    "LazyVim/LazyVim",
    opts = function(_, opts)
      -- CHANGE THIS MANUALLY
      opts.colorscheme = "tokyonight-night"
      -- opts.colorscheme = "solarized-osaka"
    end,
  },

}
