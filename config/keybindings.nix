{
  globals.mapleader = "  ";
  globals.maplocalleader = "  ";

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
      mode = "n";
      key = "K";
      action = "vim.lsp.buf.hover";
      options.silent = true;
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
      key = "<leader>sh";
      action = "help_tags";
      options.desc = "[S]earch [H]elp";
    }
    {
      mode = "n";
      key = "<leader>sk";
      action = "keymaps";
      options.desc = "[S]earch [K]eymaps";
    }
    {
      mode = "n";
      key = "<leader>sf";
      action = "find_files";
      options.desc = "[S]earch [F]iles";
    }
    {
      mode = "n";
      key = "<leader>sw";
      action = "grep_string";
      options.desc = "[S]earch current [W]ord";
    }
    {
      mode = "n";
      key = "<leader>sg";
      action = "live_grep";
      options.desc = "[S]earch by [G]rep";
    }
    {
      mode = "n";
      key = "<leader>sd";
      action = "diagnostics";
      options.desc = "[S]earch [D]iagnostics";
    }
    {
      mode = "n";
      key = "<leader>sr";
      action = "resume";
      options.desc = "[S]earch [R]esume";
    }
    {
      mode = "n";
      key = "<leader>s.";
      action = "oldfiles";
      options.desc = "[S]earch Recent Files";
    }
    {
      mode = "n";
      key = "<leader><leader>";
      action = "buffers";
      options.desc = "Find existing buffers";
    }
    {
      mode = "n";
      key = "<leader>st";
      action = "colorscheme";
      options.desc = "[S]earch [T]hemes";
    }
    {
      mode = "n";
      key = "<leader>sq";
      action = "<cmd>TodoQuickFix<CR>";
      options.desc = "[S]earch Todos [Q]uick Fix";
    }

    {
      mode = "n";
      key = "<leader>a";
      action.__raw = "function() require'harpoon':list():add() end";
    }
    {
      mode = "n";
      key = "<C-e>";
      action.__raw =
        "function() require'harpoon'.ui:toggle_quick_menu(require'harpoon':list()) end";
    }
    {
      mode = "n";
      key = "<C-j>";
      action.__raw = "function() require'harpoon':list():select(1) end";
    }
    {
      mode = "n";
      key = "<C-k>";
      action.__raw = "function() require'harpoon':list():select(2) end";
    }
    {
      mode = "n";
      key = "<C-l>";
      action.__raw = "function() require'harpoon':list():select(3) end";
    }
    {
      mode = "n";
      key = "<C-m>";
      action.__raw = "function() require'harpoon':list():select(4) end";
    }
    {
      mode = "t";
      key = "<Esc><Esc>";
      action = "<C-\\><C-n>";
      options = { desc = "Exit terminal mode"; };
    }
  ];
}
