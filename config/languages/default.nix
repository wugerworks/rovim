{
  lib,
  pkgs,
  ...
}: {
  vim = {
    lsp = {
      enable = true;
      formatOnSave = true;
      lspconfig.enable = lib.mkForce false;
      inlayHints.enable = true;
      lspSignature.enable = true;
      trouble.enable = true;
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
