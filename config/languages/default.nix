{pkgs, ...}: {
  vim = {
    lsp = {
      enable = true;
      formatOnSave = true;
      lspSignature.enable = true;
      trouble.enable = true;
      lightbulb.enable = false;
      inlayHints.enable = true;
    };
    mappings = {
      codeAction = "<leader>la";
      goToDeclaration = "gD";
      goToDefinition = "gd";
      listReferences = "gr";
      goToType = "gy";
      hover = "K";
      nextDiagnostic = "]d"; # ]d
      openDiagnosticFloat = "<leader>d";
      renameSymbol = "rn";
      documentHighlight = null;
      listDocumentSymbols = null;
      listImplementations = null;
      listWorkspaceFolders = null;
      previousDiagnostic = null;
      removeWorkspaceFolder = null;
      signatureHelp = null;
      toggleFormatOnSave = null;
    };
    treesitter = {
      enable = true;
      addDefaultGrammars = true;
      textobjects.enable = true;
      grammars = pkgs.vimPlugins.nvim-treesitter.allGrammars;
    };
    languages = {
      enableFormat = true;
      enableTreesitter = true;
      enableExtraDiagnostics = true;

      bash.enable = true;
      clang.enable = true;
      css.enable = true;
      html.enable = true;
      lua.enable = true;
      markdown.enable = true;
      python.enable = true;
      rust.crates.enable = true;
      rust.enable = true;
      ts.enable = true;
      zig.enable = true;

      nix = {
        enable = true;
        lsp = {
          server = "nil";
          package = pkgs.nil;
        };
        format = {
          type = "alejandra";
          package = pkgs.alejandra;
        };
        extraDiagnostics = {
          types = [
            "statix"
            "deadnix"
          ];
        };
      };
    };
  };
}
