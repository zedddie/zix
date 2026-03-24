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
      mode = "t";
      key = "<Esc><Esc>";
      action = "<C-\\><C-n>";
      options = {
        desc = "Exit terminal mode";
      };
    }
  ];
}
