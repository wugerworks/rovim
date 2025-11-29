{utils, ...}: {
  imports = [
    ./binds.nix
    ./options.nix
    ./languages
    ./picker.nix
    ./visual.nix
    ./mini.nix
  ];
  vim = {
    viAlias = true;
    vimAlias = true;
    enableLuaLoader = true;
  };
}
