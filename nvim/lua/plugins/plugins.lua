return {
  {
    "MeanderingProgrammer/render-markdown.nvim",
    enabled = false
  },
  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "sindrets/diffview.nvim",
    },
    config = true,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = {enabled = false},
      servers = {
        arduino_language_server = {
          cmd = {
            "arduino-language-server",
            "-cli-config", vim.fn.expand("~/.arduino15/arduino-cli.yaml"),
            "-fqbn", "arduino:avr:uno",
          },
          filetypes = { "arduino" }
        }
      }
    },
  },
  {
    "Saecki/crates.nvim",
    event = { "BufRead Cargo.toml" },
    opts = {
      completion = {
        crates = { enabled = true },
      },
      lsp = {
        enabled = true,
        actions = true,
        completion = true,
        hover = true,
      },
    },
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    opts = {
      flavour = "mocha",
      transparent_background = false,
    },
    config = function (_, opts)
      require("catppuccin").setup(opts)
      vim.cmd("colorscheme catppuccin")
    end
  },
}
