return {
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = {
        enabled = true,

        preset = {
          header = [[


   ███████╗██╗     ██╗   ██╗██╗  ██╗
   ██╔════╝██║     ██║   ██║╚██╗██╔╝
   █████╗  ██║     ██║   ██║ ╚███╔╝
   ██╔══╝  ██║     ██║   ██║ ██╔██╗
   ██║     ███████╗╚██████╔╝██╔╝ ██╗
   ╚═╝     ╚══════╝ ╚═════╝ ╚═╝  ╚═╝

              flux dev
]],
        },

        sections = {
          { section = "header" },

          {
            section = "keys",
            gap = 1,
            padding = 1,
            items = {
              { icon = " ", key = "f", desc = "Files", action = ":FzfLua files" },
              { icon = " ", key = "g", desc = "Grep", action = ":FzfLua live_grep" },
              { icon = " ", key = "r", desc = "Recent", action = ":FzfLua oldfiles" },
              { icon = " ", key = "c", desc = "Config", action = ":e $MYVIMRC" },
              { icon = " ", key = "q", desc = "Quit", action = ":qa" },
            },
          },

          {
            section = "startup",
          },
        },
      },
    },
  },
}
