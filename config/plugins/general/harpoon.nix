_: {
  plugins.harpoon.enable = true;

  extraConfigLua = ''
    local harpoon = require('harpoon')

    local function branch()
      return vim.fn.system("git branch --show-current"):gsub("\n", "")
    end

    vim.keymap.set("n", "<leader>a", function() harpoon:list(branch()):add() end)
    vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list(branch())) end)
    vim.keymap.set("n", "<C-h>", function() harpoon:list(branch()):select(1) end)
    vim.keymap.set("n", "<C-j>", function() harpoon:list(branch()):select(2) end)
    vim.keymap.set("n", "<C-k>", function() harpoon:list(branch()):select(3) end)
    vim.keymap.set("n", "<C-l>", function() harpoon:list(branch()):select(4) end)
  '';
}
