return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = {
      "nvim-lua/plenary.nvim"
    },
    config = function()
      local harpoon = require("harpoon")
      harpoon:setup({
        settings = {
          save_on_toggle = true,
          sync_on_ui_close = true,
        },
      })
      vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
      vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
  
      -- Toggle previous & next buffers stored within Harpoon list
      vim.keymap.set("n", "hp", function() harpoon:list():prev() end)
      vim.keymap.set("n", "hn", function() harpoon:list():next() end)
    end,
  }
  