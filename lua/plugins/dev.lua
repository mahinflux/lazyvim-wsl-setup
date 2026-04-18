return {
  ------------------------------------------------------------------
  -- LSP CONFIG (Next.js, TS, Tailwind, Python)
  ------------------------------------------------------------------
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        tailwindcss = {
          filetypes = {
            "html",
            "css",
            "javascript",
            "javascriptreact",
            "typescriptreact",
            "python"
          },
        },
      },
    },
  },
  ------------------------------------------------------------------
  --  type script servers
  ------------------------------------------------------------------
  {
    "pmizio/typescript-tools.nvim",
    dependencies = { "nvim-lspconfig" },
    opts = {},
  },

  ------------------------------------------------------------------
  --  emmet
  ------------------------------------------------------------------
  {
    "olrtg/nvim-emmet",
    ft = { "html", "css", "javascriptreact", "typescriptreact" },
    config = function()
    end,
  },

  {
    "pmizio/typescript-tools.nvim",
    dependencies = { "nvim-lspconfig" },
    opts = {},
  },
  ------------------------------------------------------------------
  --  tailwindcss tooling
  ------------------------------------------------------------------
  {
    "luckasRanarison/tailwind-tools.nvim",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
    },
    opts = {
      document_color = {
        enabled = true, -- color preview
      },
    },
  },
  ------------------------------------------------------------------
  -- Coloring in lazyvim
  ------------------------------------------------------------------
  {
    "NvChad/nvim-colorizer.lua",
    opts = {
      filetypes = { "*", "!lazy" },
      user_default_options = {
        tailwind = true,
      },
    },
  },





  {
    "windwp/nvim-ts-autotag",
    opts = {}
  },

  ------------------------------------------------------------------
  -- TREESITTER (syntax parsing)
  ------------------------------------------------------------------
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "javascript",
        "typescript",
        "tsx",
        "html",
        "css",
        "json",
        "python",
        "bash",
      },
      highlight = { enable = true },
      indent = { enable = true },

    },
  },

  ------------------------------------------------------------------
  -- FORMATTING (Prettier + Python)
  ------------------------------------------------------------------
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        javascript = { "prettier" },
        typescript = { "prettier" },
        javascriptreact = { "prettier" },
        typescriptreact = { "prettier" },
        css = { "prettier" },
        html = { "prettier" },
        json = { "prettier" },
        markdown = { "prettier" },
        python = { "black" },
      },
    },
  },

  ------------------------------------------------------------------
  -- LINTING (ESLint)
  ------------------------------------------------------------------
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        javascript = { "eslint_d" },
        typescript = { "eslint_d" },
        javascriptreact = { "eslint_d" },
        typescriptreact = { "eslint_d" },
      },
    },
  },

  ------------------------------------------------------------------
  -- AUTOCOMPLETION (already in LazyVim, just ensure sources)
  ------------------------------------------------------------------
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
    },
  },

  ------------------------------------------------------------------
  -- FZF (you already fixed it)
  ------------------------------------------------------------------
  {
    "ibhagwan/fzf-lua",
    opts = {},
  },

  ------------------------------------------------------------------
  -- GIT UI
  ------------------------------------------------------------------
  {
    "kdheepak/lazygit.nvim",
    cmd = { "LazyGit" },
  },

  ------------------------------------------------------------------
  -- AI INTEGRATION (choose ONE, don’t install 5 of them)
  ------------------------------------------------------------------

  -- Option A: Simple + stable
  -- {
  --   "github/copilot.vim",
  --   event = "InsertEnter",
  -- },

  -- Option B: More control (comment A if you use this)

  --


}
