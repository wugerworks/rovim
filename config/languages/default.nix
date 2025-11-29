{
  lib,
  pkgs,
  ...
}: {
  vim = {
    lsp = {
      enable = true;
      formatOnSave = true;
      inlayHints.enable = true;
      lspSignature.enable = true;
      trouble.enable = true;
    };
    treesitter = {
      enable = true;
      textobjects.enable = true;
      grammars = pkgs.vimPlugins.nvim-treesitter.allGrammars;
    };
    languages = {
      enableFormat = true;
      enableTreesitter = true;
      enableExtraDiagnostics = true;
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
