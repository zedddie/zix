_: {
  autoCmd = [
    {
      event = [
        "UIEnter"
        "ColorScheme"
      ];
      callback.__raw = ''
        function()
          local normal = vim.api.nvim_get_hl(0, { name = 'Normal' })
          if normal.bg then
            io.write(string.format('\027]11;#%06x\027\\', normal.bg))
          end
        end
      '';
    }
  ];
}
