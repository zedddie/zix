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
      #TODO: rebind to something sound (ctrl-esc mb, so it owuld be easy to use
      # vi mode inside of tt
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
