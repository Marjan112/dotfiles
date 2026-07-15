return {
  "olimorris/codecompanion.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  opts = {
    rules = {
      default = {
        description = "Project rules",
        files = {
          "AGENTS.md",
        }
      },
      opts = {
        chat = {
          autoload = "default"
        }
      }
    },
    adapters = {
      http = {
        qwen = function()
          return require("codecompanion.adapters").extend("openai_compatible", {
            env = {
              url = "http://127.0.0.1:8080",
            },
            schema = {
              model = {
                default = "Qwen3-Coder-30B-A3B-Instruct-Q4_K_M",
              },
            },
          })
        end,
      },
      qwythos = function ()
        return require("codecompanion.adapters").extend("openai_compatible", {
          env = {
            url = "http://127.0.0.1:8080",
          },
          schema = {
            model = {
              default = "Qwythos-9B-Claude-Mythos-5-1M-Q4_K_M"
            }
          }
        })
      end
    },
    strategies = {
      chat = { adapter = "qwen" }
    },
  },
}
