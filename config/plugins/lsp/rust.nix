{
  lsp.servers = {
    clangd = {
      config = {
        cmd = [ "clangd" "--background-index" ];
        filetypes = [ "c" "cpp" ];
        root_markers = [ "compile_commands.json" "compile_flags.txt" ];
      };
      enable = true;
    };
    lua_ls = { enable = true; };
    rust-analyzer = { enable = true; };
    nixd = { enable = true; };
  };
}
