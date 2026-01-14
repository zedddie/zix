{ ... }: {
  config = {
    opts = {
      number = true;
      relativenumber = true;
      termguicolors = true;
      showmode = false;
      scrolloff = 20;
      clipboard = "unnamedplus";
      breakindent = true;
      cursorline = true;
      mouse = "a";
      undofile = true;
      ignorecase = true;
      smartcase = true;
      # signcolumn = true;
      updatetime = 250;
      timeoutlen = 300;
      splitright = true;
      splitbelow = true;
      list = true;
      confirm = true;
      guicursor = "a:block";
      # clipboard.providers.wl-copy.enable = true;
      # clipboard.providers.xclip.enable = true;

    };
  };
}
