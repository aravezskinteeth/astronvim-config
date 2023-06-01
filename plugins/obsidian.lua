return {
  "epwalsh/obsidian.nvim",
  lazy = true,
  event = { "BufReadPre /Volumes/LIVISU/livs/markdown/obsidian-parent/eden/**.md" },
  -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand':
  -- event = { "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md" },
  keys = {
    {
      "<leader>Ob", "<cmd>:ObsidianBacklinks<cr>", desc = "Getting a location list of references for current buffers"
    },
    {
      "<leader>Ot", "<cmd>:ObsidianToday<cr>", desc = "Create Daily Note"
    },
    {
      "<leader>Oy", "<cmd>:ObsidianYesterday<cr>", desc = "Open Yesterday's Daily Note"
    },
    {
      "<leader>Oo", "<cmd>:ObsidianOpen<cr>", desc = "Open Note in Obsidian App"
    },
    {
      "<leader>On", "<cmd>:ObsidianNew<cr>", desc = "Create a New Note"
    },
    {
      "<leader>Os", "<cmd>:ObsidianSearch<cr>", desc = "Search Notes in your vault"
    },
    {
      "<leader>Oq", "<cmd>:ObsidianQuickSwitch<cr>", desc = "Quick Switch to another Note in your vault"
    },
    {
      "<leader>Oll", "<cmd>:ObsidianLink<cr>", desc = "To link an in-line visual selection of text to a note."
    },
    {
      "<leader>Oln", "<cmd>:ObsidianLinkNew<cr>", desc = "To create a new note and link it to an in-line visual selection of text."
    },
    {
      "<leader>Olf", "<cmd>:ObsidianFollowLink<cr>", desc = "To follow a note reference under the cursor."
    },
    {
      "<leader>OT", "<cmd>:ObsidianTemplate<cr>", desc = "To insert a template from the templates folder"
    },
  },
    dependencies = {
    -- Required.
    "nvim-lua/plenary.nvim",

    -- Optional, for completion.
    "hrsh7th/nvim-cmp",

    -- Optional, for search and quick-switch functionality.
    "nvim-telescope/telescope.nvim",
    },
    opts = {
    dir = "/Volumes/LIVISU/livs/markdown/obsidian-parent/eden/", -- no need to call 'vim.fn.expand' here

    daily_notes = {
      -- Optional, if you keep daily notes in a separate directory.
      folder = "personal-management/diary",
      -- Optional, if you want to change the date format for daily notes.
      date_format = "%d-%m-%Y"
    },
    completion = {
      nvim_cmp = true, -- if using nvim-cmp, otherwise set to false
   },

    -- Optional, set to true if you don't want Obsidian to manage frontmatter.
    disable_frontmatter = false,

    -- Optional, alternatively you can customize the frontmatter data.
    note_frontmatter_func = function(note)
      -- This is equivalent to the default frontmatter function.
      local out = { id = note.id, aliases = note.aliases, tags = note.tags }
      -- `note.metadata` contains any manually added fields in the frontmatter.
      -- So here we just make sure those fields are kept in the frontmatter.
      if note.metadata ~= nil and require("obsidian").util.table_length(note.metadata) > 0 then
        for k, v in pairs(note.metadata) do
          out[k] = v
        end
      end
      return out
    end,

    -- Optional, for templates (see below).
    templates = {
      subdir = "home/templates",
      date_format = "%d-%m-%Y",
      time_format = "%H:%M",
    },

    -- Optional, by default when you use `:ObsidianFollowLink` on a link to an external
    -- URL it will be ignored but you can customize this behavior here.
    follow_url_func = function(url)
      -- Open the URL in the default web browser.
      vim.fn.jobstart({"open", url})  -- Mac OS
      -- vim.fn.jobstart({"xdg-open", url})  -- linux
    end,

    -- Optional, set to true if you use the Obsidian Advanced URI plugin.
    -- https://github.com/Vinzent03/obsidian-advanced-uri
    use_advanced_uri = false,

    -- Optional, set to true to force ':ObsidianOpen' to bring the app to the foreground.
    open_app_foreground = false,

    -- Optional, by default commands like `:ObsidianSearch` will attempt to use
    -- telescope.nvim, fzf-lua, and fzf.nvim (in that order), and use the
    -- first one they find. By setting this option to your preferred
    -- finder you can attempt it first. Note that if the specified finder
    -- is not installed, or if it the command does not support it, the
    -- remaining finders will be attempted in the original order.
    finder = "telescope.nvim",
  },
}
