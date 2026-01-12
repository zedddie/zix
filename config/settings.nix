{ pkgs, ... }:
{
  config = {
    opts = {
      number = true;
      relativenumber = true;
      termguicolors = true;
      showmode = false;
      scrolloff = 20;
    };
  };
}
