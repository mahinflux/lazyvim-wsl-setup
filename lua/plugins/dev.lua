return {
  ------------------------------------------------------------------
  -- LSP CONFIG (Next.js, TS, Tailwind, Python)
  ------------------------------------------------------------------
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        html = {},
        cssls = {},
        pyright = {},
        tsserver = {},
        tailwindcss = {},
      },
    },
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
  ------------------------------------------------------------------
  -- TERMINAL (useful for dev + AI scripts)
  ------------------------------------------------------------------
  {
    "akinsho/toggleterm.nvim",
    opts = {
      size = 12,
      open_mapping = [[<c-\>]],
      direction = "horizontal",
    },
  },

}
