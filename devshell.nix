{pkgs}:
pkgs.mkShell {
  # Add build dependencies
  packages = builtins.attrValues {
    inherit
      (pkgs)
      # nix
      statix
      alejandra
      nil
      # lua
      lua-language-server
      stylua
      ;
  };

  env = {
    WORKS_ID = "rovim.wuger.works";
  };
}
