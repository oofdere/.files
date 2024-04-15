{pkgs, ...}: {
  programs.vscode = {
    enable = true;
    package = pkgs.vscodium;

    enableUpdateCheck = false;
    enableExtensionUpdateCheck = false;
    mutableExtensionsDir = false;

    userSettings = {
      editor = {
        fontFamily = "'IBM Plex Mono'";
        wordWrap = "on";
      };

      # nice tab labels for sveltekit projects
      workbench.editor.customLabels = {
        enabled = true;
        patterns = {
          "**/*" = "\${dirname}/\${filename}.\${extname}";
          "**/index.*" = "\${dirname}/\${filename}.\${extname}";
        };
      };

      svelte.enable-ts-plugin = true;
    };

    extensions = with pkgs.vscode-extensions;
      [
        # nix
        bbenoist.nix
        kamadorueda.alejandra

        # typescript
        #yoavbls.pretty-ts-errors
        esbenp.prettier-vscode
        dbaeumer.vscode-eslint

        # webdev
        svelte.svelte-vscode
        bradlc.vscode-tailwindcss
        #heybourn.headwind
        #rangav.vscode-thunder-client

        # misc
        rust-lang.rust-analyzer
        gleam.gleam
        yzhang.markdown-all-in-one
        ms-vscode.hexeditor
      ]
      ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
        {
          name = "vscord";
          publisher = "LeonardSSH";
          version = "latest";
          sha256 = "1c9bd5a57d9c6ad8af772c6c9d58c9051bc84f09a4ca859e85a7d62fde52d81d";
        }
      ];
  };
}
