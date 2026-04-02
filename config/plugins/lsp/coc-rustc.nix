{ ... }:
{
  extraConfigLua = ''
    vim.g.coc_user_config = {
      languageserver = {
        rust = {
          command = find_ra(),
          filetypes = { "rust" },
          rootPatterns = { "Cargo.toml", "rust-project.json" },
          initializationOptions = {
            checkOnSave = true,
            linkedProjects = {
              "Cargo.toml",
              "compiler/rustc_codegen_cranelift/Cargo.toml",
              "compiler/rustc_codegen_gcc/Cargo.toml",
              "library/Cargo.toml",
              "src/bootstrap/Cargo.toml",
              "src/tools/rust-analyzer/Cargo.toml",
            },
            check = {
              invocationStrategy = "once",
              overrideCommand = { "python3", "x.py", "check", "compiler", "--json-output", "--build-dir", "build-rust-analyzer" },
            },
            rustfmt = {
              overrideCommand = { "build/host/rustfmt/bin/rustfmt", "--edition=2024" },
            },
            procMacro = {
              enable = true,
              server = "build/host/stage0/libexec/rust-analyzer-proc-macro-srv",
            },
            rustc = {
              source = "./Cargo.toml",
            },
            cargo = {
              sysrootSrc = "./library",
              extraEnv = { RUSTC_BOOTSTRAP = "1" },
              buildScripts = {
                enable = true,
                invocationStrategy = "once",
                overrideCommand = { "python3", "x.py", "check", "--json-output", "--compile-time-deps", "--build-dir", "build-rust-analyzer" },
              },
            },
            server = {
              extraEnv = { RUSTUP_TOOLCHAIN = "nightly" },
            },
            inlayHints = {
              enable = true,
              chainingHints = { enable = true },
              parameterHints = { enable = true },
              typeHints = { enable = true },
            },
          },
        },
      },
    }
  '';

  keymaps = [
    {
      mode = "n";
      key = "grk";
      action.__raw = "function() vim.fn['coc#float#jump']() end";
      options = { silent = true; desc = "CoC: [G]oto hover window"; };
    }
    {
      mode = "n";
      key = "grd";
      action = "<Plug>(coc-definition)";
      options = { silent = true; desc = "CoC: [G]oto [D]efinition"; };
    }
    {
      mode = "n";
      key = "gri";
      action = "<Plug>(coc-implementation)";
      options = { silent = true; desc = "CoC: [G]oto [I]mplementation"; };
    }
    {
      mode = "n";
      key = "grr";
      action = "<Plug>(coc-references)";
      options = { silent = true; desc = "CoC: [G]oto [R]eferences"; };
    }
    {
      mode = "n";
      key = "grt";
      action = "<Plug>(coc-type-definition)";
      options = { silent = true; desc = "CoC: [G]oto [T]ype Definition"; };
    }
    {
      mode = "n";
      key = "grD";
      action = "<Plug>(coc-declaration)";
      options = { silent = true; desc = "CoC: [G]oto [D]eclaration"; };
    }
    {
      mode = "n";
      key = "grn";
      action = "<Plug>(coc-rename)";
      options = { silent = true; desc = "CoC: [R]e[n]ame"; };
    }
    {
      mode = [ "n" "x" ];
      key = "gra";
      action = "<Plug>(coc-codeaction-cursor)";
      options = { silent = true; desc = "CoC: Code [A]ction"; };
    }
    {
      mode = "n";
      key = "<leader>q";
      action = ":<C-u>CocList diagnostics<CR>";
      options = { silent = true; desc = "Open diagnostic [Q]uickfix list"; };
    }
    {
      mode = "n";
      key = "K";
      action.__raw = ''
        function()
          if vim.fn.CocAction('hasProvider', 'hover') then
            vim.fn.CocActionAsync('doHover')
          else
            vim.api.nvim_feedkeys('K', 'in', false)
          end
        end
      '';
      options = { silent = true; desc = "CoC: Show documentation"; };
    }
    {
      mode = "i";
      key = "<CR>";
      action.__raw = ''
        function()
          if vim.fn.pumvisible() == 1 then
            return vim.fn['coc#_select_confirm']()
          end
          return vim.api.nvim_replace_termcodes('<C-g>u<CR><c-r>=coc#on_enter()<CR>', true, true, true)
        end
      '';
      options = { silent = true; expr = true; noremap = true; replace_keycodes = false; };
    }
    {
      mode = "i";
      key = "<Tab>";
      action.__raw = ''
        function()
          if vim.fn.pumvisible() == 1 then
            return vim.api.nvim_replace_termcodes('<C-n>', true, true, true)
          end
          return vim.api.nvim_replace_termcodes('<Tab>', true, true, true)
        end
      '';
      options = { silent = true; expr = true; noremap = true; };
    }
    {
      mode = "i";
      key = "<S-Tab>";
      action.__raw = ''
        function()
          if vim.fn.pumvisible() == 1 then
            return vim.api.nvim_replace_termcodes('<C-p>', true, true, true)
          end
          return vim.api.nvim_replace_termcodes('<S-Tab>', true, true, true)
        end
      '';
      options = { silent = true; expr = true; noremap = true; };
    }
  ];
}
}
