{ pkgs, ... }:

{
  plugins.toggleterm = {
    enable = true;
    settings = {
      direction = "float";
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>tt";
      action = "<cmd>ToggleTerm<CR>";
      options.desc = "Open ToggleTerm";
    }
    {
      mode = "t";
      key = "<Esc>";
      action = "<C-\\><C-n>";
      options = {
        noremap = true;
        silent = true;
      };
    }
  ];
}
