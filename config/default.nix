{
  imports = [
    ./bufferline.nix
    ./lsp.nix
    ./cmp.nix
    ./neotree.nix
  ];

  globals = {
    mapleader = " ";
    maplocalleader = "\\";
  };

  opts = {
    number = true;
    relativenumber = true;
    cursorline = true;
    expandtab = true;
    tabstop = 6;
    softtabstop = 6;
    shiftwidth = 6;
    scrolloff = 6;
  };

  colorschemes.gruvbox-material = {
    autoLoad = true;
    enable = true;
    settings = {
      contrast = "hard";
    };
  };
  plugins.lualine.enable = true;
  plugins.autoclose.enable = true;
  plugins.comfy-line-numbers.enable = true;
  plugins.cursorline = {
    enable = true;
    settings = {
      cursorline = {
        timeout = 0;
      };
    };
  };
  plugins.friendly-snippets.enable = true;
  plugins.indent-blankline.enable = true;
  plugins.toggleterm.enable = true;
  plugins.lspkind.enable = true;
  plugins.typst-preview.enable = true;
  plugins.notify.enable = true;
  plugins.lint.enable = true;
  plugins.render-markdown.enable = true;
  plugins.nix.enable = true;

  keymaps = [
    { mode = "n"; key = "<leader>n"; action = "<Cmd>enew<CR>"; }
    { mode = "n"; key = "<TAB>"; action = "<Cmd>bnext<CR>"; }
    { mode = "n"; key = "<leader>x"; action = "<Cmd>bd!<CR>"; }
    { mode = "n"; key = "<leader>q"; action = "<Cmd>ToggleTerm direction=float<CR>"; }
    { mode = "n"; key = "<C-h>"; action = "<C-w>h"; options.desc = "Move to left window"; }
    { mode = "n"; key = "<C-j>"; action = "<C-w>j"; options.desc = "Move to below window"; }
    { mode = "n"; key = "<C-k>"; action = "<C-w>k"; options.desc = "Move to above window"; }
    { mode = "n"; key = "<C-l>"; action = "<C-w>l"; options.desc = "Move to right window"; }
    { mode = "n"; key = "<leader>tc"; action = ":w | !typst compile % %:r.pdf<CR>"; }
    { mode = "n"; key = "<C-f>"; action = "<cmd>Neotree filesystem toggle<CR>"; }
  ];

  plugins = {
    telescope = {
      enable = true;
      keymaps = {
        "<leader>ff" = "find_files";
        "<leader>fg" = "live_grep";
      };
    };
  };
}
