{utils, ...}: {
  vim = {
    mini = {
      # general workflow
      bracketed.enable = true;
      clue.enable = true;
      files.enable = true;
      pick.enable = true;
      bufremove.enable = true;
      diff.enable = true;
      git.enable = true;
      jump2d = {
        enable = true;
        setupOpts = {
          mappings.start_jumping = "<cr>";
          view.dim = true;
          silent = true;
        };
      };
      # text editing
      ai.enable = true;
      comment.enable = true;
      completion.enable = true;
      operators.enable = true;
      pairs.enable = true;
      snippets.enable = true;
      surround.enable = true;
      # appearance
      animate.enable = true;
      notify.enable = true;
      icons.enable = true;
      cursorword.enable = true;
      hipatterns = {
        enable = true;
        setupOpts.highlighters = let
          mkPattern = pattern: "%f[%w]()${pattern}()%f[%W]";
          mkHi = pattern: group: {
            inherit group;
            pattern = mkPattern pattern;
          };
        in {
          todo = mkHi "TODO" "MiniHipatternsTodo";
          hack = mkHi "HACK" "MiniHipatternsHack";
          note = mkHi "NOTE" "MiniHipatternsNote";
          fixme = mkHi "FIXME" "MiniHipatternsFixme";
        };
      };
      tabline.enable = true;
      statusline.enable = true;
      trailspace.enable = true;
    };
    keymaps = [
      (utils.mkLuaKeymap "n" "-" "MiniFiles.open" "Open mini.files")
    ];
  };
}
