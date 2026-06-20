{
      plugins = {
            lualine.enable = true;
            lsp = {
                  enable = true;
                  servers = {
                        ts-ls.enable = true;
                        lua_ls.enable = true;
                        clangd.enable = true;
                        c3_lsp.enable = true;
                        zls.enable = true;
                        gopls.enable = true;
                        ols.enable = true;
                        verible.enable = true;
                  };
            };
      };
}
