{
  vim = {
    theme = {
      enable = true;
      name = "everforest";
      style = "hard";
    };
    visuals = {
      nvim-web-devicons.enable = true;
      # notification system
      # https://github.com/j-hui/fidget.nvim
      fidget-nvim.enable = true;
      # highlight undo / paste / autoformat / macros
      # https://github.com/tzachar/highlight-undo.nvim
      highlight-undo.enable = true;
    };
    minimap.codewindow = {
      enable = true;
      mappings = {
        open = null;
        close = null;
        toggle = "<leader>m";
        toggleFocus = null;
      };
    };
    ui = {
      noice = {
        enable = true;
        setupOpts = {
          presets = {
            command_palette = true;
            inc_rename = true;
            long_message_to_split = true;
            bottom_search = false;
            lsp_doc_border = false;
          };
          lsp = {
            signature.enable = true;
            override = {
              "cmp.entry.get_documentation" = false;
              "vim.lsp.util.convert_input_to_markdown_lines" = false;
              "vim.lsp.util.stylize_markdown" = false;
            };
          };
        };
      };
      borders = {
        enable = true;
        globalStyle = "single";
      };
    };
  };
}
