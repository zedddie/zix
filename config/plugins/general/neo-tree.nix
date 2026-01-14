{
  # Neo-tree is a Neovim plugin to browse the file system
  # https://nix-community.github.io/nixvim/plugins/neo-tree/index.html?highlight=neo-tree#pluginsneo-treepackage
  plugins.neo-tree = {
    enable = true;
    settings.log_level = "fatal";
    settings.log_to_file = false;

    settings.event_handlers = [{
      event = "neo_tree_buffer_enter";
      handler.__raw = ''
        function(arg)
          vim.cmd 'setlocal relativenumber'
        end
      '';
    }];

    settings.filesystem = {
      filtered_items = {
        hide_hidden = false;
        hide_gitignored = false;
        hide_dotfiles = false;
      };
      window = {
        mappings = { "\\" = "close_window"; };
        position = "right";
      };
    };
  };

  # https://nix-community.github.io/nixvim/keymaps/index.html
  keymaps = [{
    key = "\\";
    action = "<cmd>Neotree reveal<cr>";
    options = { desc = "NeoTree reveal"; };
  }];
}
