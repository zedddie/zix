{
  plugins.cord = {
    enable = true;
    settings = {
      display = {
        theme = "catppuccin";
        flavor = "dark";
        swap_icons = false;
      };
      timestamp = {
        enabled = true;
        reset_on_idle = false;
        reset_on_change = false;
      };
      idle = {
        enabled = true;
        timeout = 30000;
        show_status = true;
      };
      lazy = {
        icon.__raw = "require('cord.api.icon').get 'keyboard'";
      };
    };
  };
}
