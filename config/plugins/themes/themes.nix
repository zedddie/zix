{ pkgs, ... }:
{
  colorschemes.oxocarbon.enable = false;
  colorschemes = {
    gruvbox.enable = false;
    catppuccin.enable = false;
    dracula.enable = false;
    nightfox.enable = false;
    onedark.enable = false;
    nord.enable = false;
    everforest.enable = false;
    kanagawa = {
      enable = true;
      settings = {
        compile = false;
        undercurl = true;
        commentStyle.italic = false;
        functionStyle = { };
        keywordStyle.italic = false;
        statementStyle.bold = true;
        typeStyle = { };
        transparent = false;
        dimInactive = false;
        terminalColors = true;
        theme = "wave";
        background = {
          dark = "dragon";
          light = "lotus";
        };
        colors = {
          palette = { };
          theme = {
            wave = { };
            lotus = { };
            dragon = { };
            all = { };
          };
        };
      };
    };
    rose-pine = {
      enable = false;
      settings = {
        styles = {
          bold = true;
          italic = false;
          transparency = true;
        };
      };
    };
  };
  extraPlugins = with pkgs.vimPlugins; [
    (pkgs.vimUtils.buildVimPlugin {
      name = "darkrose-nvim";
      src = pkgs.fetchFromGitHub {
        owner = "water-sucks";
        repo = "darkrose.nvim";
        rev = "master";
        sha256 = "sha256-7z+TfwN1fRh4MrmFaz5RGJSXy1G5TQo1NDJ5SiZ+uyc=";
      };
    })
    modus-themes-nvim
    (pkgs.vimUtils.buildVimPlugin {
      name = "zenburn-nvim";
      src = pkgs.fetchFromGitHub {
        owner = "phha";
        repo = "zenburn.nvim";
        rev = "master";
        hash = "sha256-ee13G+e3BWUhz/4fzap1UcSP77gLOx3P+otMrsIiloM=";
      };
    })
    oceanic-next
    (pkgs.vimUtils.buildVimPlugin {
      name = "pastelpink";
      src = pkgs.fetchFromGitHub {
        owner = "zedddie";
        repo = "pastelpink";
        rev = "main";
        sha256 = "sha256-Xub5cvVZPZ4IWZREpbvc7HjJYpJRAORlZIM133iKTBM=";
      };
    })
  ];
  extraConfigLua = ''
    vim.cmd("colorscheme kanagawa")
  '';
}
