{utils, ...}: {
  imports = [
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

    binds.whichKey = {
      enable = true;
      register = {
        "<leader>f" = "Picker";
        "<leader>g" = "Git";
        "<leader>a" = "LSP";
        "<leader>l" = "Language";
        "<leader>n" = "Notes";
      };
      setupOpts = {
        preset = "classic";
        delay = 0;
        icons = {
          mappings = false;
          separator = "->";
          group = "";
        };
        win.border = "none";
        triggers = [
          {
            "@" = "<leader>";
            mode = "n";
          }
        ];
      };
    };
    keymaps = [
      (utils.mkKeymap' "n" "<tab>" ":bn<cr>")
      (utils.mkKeymap' "n" "<S-tab>" ":bp<cr>")
      (utils.mkKeymap' "n" "<C-c>" ":bd<cr>")
      (utils.mkKeymap' "v" "<" "<gv")
      (utils.mkKeymap' "v" ">" ">gv")
      (utils.mkKeymap' "n" "j" "gj")
      (utils.mkKeymap' "n" "k" "gk")
      (utils.mkKeymap' "n" "H" "_")
      (utils.mkKeymap' "n" "L" "g_")
    ];
  };
}
