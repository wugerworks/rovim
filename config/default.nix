{utils, ...}: {
  imports = [
    ./languages
    ./binds.nix
    ./options.nix
    ./picker.nix
    ./visual.nix
    ./utility.nix
    ./mini.nix
  ];
  vim = {
    viAlias = true;
    vimAlias = true;
    enableLuaLoader = true;
  };
}
