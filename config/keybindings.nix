{
  globals.mapleader = " ";
  globals.maplocalleader = " ";

  keymaps = [
    {
      mode = "n";
      key = "<Esc>";
      action = "<cmd>nohlsearch<CR>";
    }
    {
      mode = "n";
      key = "<leader>q";
      action = "vim.diagnostic.setloclist";
      options.desc = "Open diagnostic [Q]uickfix list";
    }
    {
      mode = "t";
      key = "<Esc><Esc>";
      action = "<C-\\><C-n>";
      options.desc = "Exit terminal mode";
    }

    {
      mode = "n";
      key = "<left>";
      action = "<cmd>echo 'dyracok:c'<CR>";
    }
    {
      mode = "n";
      key = "<right>";
      action = "<cmd>echo 'dyracok:c'<CR>";
    }
    {
      mode = "n";
      key = "<up>";
      action = "<cmd>echo 'dyracok:c'<CR>";
    }
    {
      mode = "n";
      key = "<down>";
      action = "<cmd>echo 'dyracok:c'<CR>";
    }

    {
      mode = "n";
      key = "<leader>a";
      action.__raw = "function() require'harpoon':list():add() end";
    }
    {
      mode = "n";
      key = "<C-e>";
      action.__raw = "function() require'harpoon'.ui:toggle_quick_menu(require'harpoon':list()) end";
    }
    {
      mode = "n";
      key = "<C-h>";
      action.__raw = "function() require'harpoon':list():select(1) end";
    }
    {
      mode = "n";
      key = "<C-j>";
      action.__raw = "function() require'harpoon':list():select(2) end";
    }
    {
      mode = "n";
      key = "<C-k>";
      action.__raw = "function() require'harpoon':list():select(3) end";
    }
    {
      mode = "n";
      key = "<C-l>";
      action.__raw = "function() require'harpoon':list():select(4) end";
    }
    {
      mode = "t";
      key = "<Esc><Esc>";
      action = "<C-\\><C-n>";
      options = {
        desc = "Exit terminal mode";
      };
    }
  ];
}
