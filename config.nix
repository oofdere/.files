{ self, pkgs, ... }: {
      imports = [
        ./apps/fonts.nix
      ];

      # List packages installed in system profile. To search by name, run:
      # $ nix-env -qaP | grep wget
      environment.systemPackages =
        [ pkgs.nano
          pkgs.tailscale
          pkgs.nushell
          pkgs.rustup
          pkgs.bun
          pkgs.elixir
        ];

      homebrew = {
        enable = true;
        onActivation = {
          autoUpdate = true;
          cleanup = "uninstall";
          upgrade = true;

          
        };

        taps = [ ];
          brews = [ "mpv" ];
          casks = [ 
            "floorp"

          ];
      };

      nixpkgs.config.allowUnfree = true;

      # Necessary for using flakes on this system.
      nix.settings.experimental-features = "nix-command flakes";
      
      services.tailscale.enable = true;

      # Create /etc/zshrc that loads the nix-darwin environment.
      programs.zsh.enable = true;

      users.users.teo = {
        name = "teo";
        home = "/Users/teo";
        shell = pkgs.nushell;
      };

      # make finder suck less balls
      system.defaults.finder = {
        _FXShowPosixPathInTitle = true;  # show full path in finder title
        AppleShowAllExtensions = true;  # show all file extensions
        FXEnableExtensionChangeWarning = false;  # disable warning when changing file extension
        QuitMenuItem = true;  # enable quit menu item
        ShowPathbar = true;  # show path bar
        ShowStatusBar = true;  # show status bar
      };

      # Set Git commit hash for darwin-version.
      #system.configurationRevision = self.rev or self.dirtyRev or null;

      # Used for backwards compatibility, please read the changelog before changing.
      # $ darwin-rebuild changelog
      system.stateVersion = 6;

      # The platform the configuration will be used on.
      nixpkgs.hostPlatform = "aarch64-darwin";
    }