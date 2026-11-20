{ config, pkgs, lib, ... }:

{
  home = {
    stateVersion = "26.05"; # Please read the comment before changing.

    packages = with pkgs; [
      git
      fzf
      jq
      uv
      ripgrep
      go
      nodejs_26
      pnpm
      gh
      pngquant
      helix
      lazygit
      lazydocker
      worktrunk
      mise
      devenv
      zed-editor
    ];

    file = {
      # # Building this configuration will create a copy of 'dotfiles/screenrc' in
      # # the Nix store. Activating the configuration will then make '~/.screenrc' a
      # # symlink to the Nix store copy.
      # ".screenrc".source = dotfiles/screenrc;

      # # You can also set the file content immediately.
      # ".gradle/gradle.properties".text = ''
      #   org.gradle.console=verbose
      #   org.gradle.daemon.idletimeout=3600000
      # '';
    };

    sessionVariables = {
      # EDITOR = "emacs";
    };
    sessionPath = [
      "$HOME/.local/bin"
      "$HOME/.cargo/bin"
      "$HOME/.bun/bin"
    ];
  };

  programs = {
    home-manager = {
      enable = true;
    };
    zsh = {
      enable = true;
      enableCompletion = true;
      autosuggestion.enable = true;
      historySubstringSearch.enable = true;
      syntaxHighlighting.enable= true;
      shellAliases = {
        g = "git";
        gs = "git status";
        gp = "git pull";
        gc = "git commit";
        gw = "git worktree";
        ll = "ls -al";
        ".." = "cd ..";
        "--" = "cd --";
      };
      initContent = ''
        eval "$(devenv hook zsh)"
      '';
    };
    starship = {
      enable = true;
      settings = {
        add_newline = true;
        command_timeout = 1300;
        scan_timeout = 50;
        format = "$all$nix_shell$nodejs$lua$golang$rust$php$git_branch$git_commit$git_state$git_status\n$username$hostname$directory";
        character = {
          success_symbol = "[](bold green) ";
          error_symbol = "[✗](bold red) ";
        };
      };
    };
    lazygit = {
      enable = true;
      settings = {
        git.overrideGpg = true;
        os.editPreset = "vscode";
      };
    };
    mise = {
      enable = true;
      enableZshIntegration = true;
    };
    neovim = {
      enable = true;
      defaultEditor = true;
      viAlias = true;
      vimAlias = true;
      vimdiffAlias = true;
      sideloadInitLua = true;
      initLua = builtins.readFile ./lazyvim.lua;
      extraPackages = [
        pkgs.fd
	pkgs.tree-sitter
      ];
    };
  };
}
