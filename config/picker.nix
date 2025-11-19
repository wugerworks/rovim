{utils, ...}: {
  vim = {
    fzf-lua = {
      enable = true;
      profile = "default-title";
    };
    keymaps = [
      # Picker
      (utils.mkKeymap' "n" "<leader>F" ":FzfLua<cr>")
      (utils.mkKeymap "n" "<leader>ff" ":FzfLua files<cr>" "Files")
      (utils.mkKeymap "n" "<leader>fo" ":FzfLua oldfiles<cr>" "File history")
      (utils.mkKeymap "n" "<leader>fl" ":FzfLua blines<cr>" "Lines")
      (utils.mkKeymap "n" "<leader>fs" ":FzfLua live_grep_glob<cr>" "Grep")
      (utils.mkKeymap "n" "<leader>fS" ":FzfLua live_grep_resume<cr>" "Last grep")
      (utils.mkKeymap "n" "<leader>fb" ":FzfLua lgrep_curbuf<cr>" "Grep buffer")

      # Git
      (utils.mkKeymap "n" "<leader>gs" ":FzfLua git_status" "Status")
      (utils.mkKeymap "n" "<leader>gc" ":FzfLua git_commits" "Commits")
      (utils.mkKeymap "n" "<leader>gC" ":FzfLua git_bcommits" "Buffer commits")
      (utils.mkKeymap "n" "<leader>gb" ":FzfLua git_blame<cr>" "Blame")
      (utils.mkKeymap "n" "<leader>gB" ":FzfLua git_branches<cr>" "Branches")
      (utils.mkKeymap "n" "<leader>gs" ":FzfLua git_stash<cr>" "Stash")

      # Other
      (utils.mkKeymap "n" "<leader>fc" ":FzfLua command_history<cr>" "Command history")
      (utils.mkKeymap "n" "<leader>fC" ":FzfLua commands<cr>" "Commands")
      (utils.mkKeymap "n" "<leader>fh" ":FzfLua helptags<cr>" "Vim help")
      (utils.mkKeymap "n" "<leader>fH" ":FzfLua manpages<cr>" "Man pages")
      (utils.mkKeymap "n" "<leader>fr" ":FzfLua registers<cr>" "Registers")
      (utils.mkKeymap "n" "<leader>fp" ":FzfLua complete_path<cr>" "Path")
    ];
  };
}
