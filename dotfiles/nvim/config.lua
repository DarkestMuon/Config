lvim.plugins = {
  -- lazy.nvim
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {},
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
      },
    config = function ()
      require("noice").setup({
        views = {
          popupmenu = {
            relative = "editor",
            position = {
              row = 8,
              col = "50%",
            },
            size = {
              width = 60,
              height = 10,
            },
            border = {
              style = "rounded",
              padding = { 0, 1 },
            },
            win_options = {
              winhighlight = { Normal = "Normal", FloatBorder = "DiagnosticInfo" },
            },
          },
        },
        lsp = {
          override = {
            ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
            ["vim.lsp.util.stylize_markdown"] = true,
            ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
          },
        },
          require("notify").setup({
            background_colour = "#000000"
          })
      })
    end
  },
  {"sitiom/nvim-numbertoggle"},
  {"akinsho/toggleterm.nvim",
    config = function()
      require("toggleterm").setup()
    end
  },
  {"epwalsh/obsidian.nvim",
    version = "*",  -- recommended, use latest release instead of latest commit
    lazy = false,
    ft = "markdown",
    -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
    -- event = {
    --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
    --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
    --   "BufReadPre path/to/my-vault/**.md",
    --   "BufNewFile path/to/my-vault/**.md",
    -- },
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    opts = {
      workspaces = {
        {
          name = "personal",
          path = "~/Notes/MainVault",
        },
      },

      notes_subdir = "Notes",
    },
  },

}
-- Define a Lua function to execute the command
function executePandocAndZathura()
 local filename = vim.fn.expand("%") -- Get the full path of the current file
 local cmd = string.format('pandoc -f markdown-implicit_figures -t pdf %s | zathura -', filename)
 vim.cmd('TermExec cmd="' .. cmd .. '"')
end

-- Create a keymap to call the function
lvim.builtin.which_key.mappings["p"] = { "<cmd>lua executePandocAndZathura()<CR>", "Execute Pandoc and Zathura" }

