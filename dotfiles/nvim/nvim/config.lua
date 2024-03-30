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
  {"xiyaowong/transparent.nvim"}
}
-- Define a Lua function to execute the command
function executePandocAndZathura()
 local filename = vim.fn.expand("%") -- Get the full path of the current file
 local cmd = string.format('pandoc -f markdown-implicit_figures -t pdf %s | zathura -', filename)
 vim.cmd('TermExec cmd="' .. cmd .. ' & "')
end

-- Create a keymap to call the function
lvim.builtin.which_key.mappings["p"] = { "<cmd>lua executePandocAndZathura()<CR>", "Execute Pandoc and Zathura" }

lvim.builtin.alpha.dashboard.section.header.val = {
  "███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗",
  "████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║",
  "██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║",
  "██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║",
  "██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║",
  "╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝",
}

lvim.builtin.alpha.dashboard.section.footer.val = {}
