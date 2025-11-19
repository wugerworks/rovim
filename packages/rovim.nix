{
  inputs,
  flake,
  pkgs,
  ...
}: let
  utils = flake.lib;
in
  (inputs.nvf.lib.neovimConfiguration {
    inherit pkgs;
    modules = [
      (import ../config)
    ];
    extraSpecialArgs = {
      # Inputs is seemingly reserved, though the docs don't show it
      inherit utils;
    };
  }).neovim
