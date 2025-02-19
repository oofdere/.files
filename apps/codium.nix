{pkgs, ...}: {
  programs.vscode = {
    enable = true;
    package = pkgs.vscode; # i uh poked at my nix store lol

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

    extensions = with pkgs.vscode-marketplace; [
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

      # rust
      rust-lang.rust-analyzer
      cordx56.rustowl-vscode

      # misc
      gleam.gleam
      yzhang.markdown-all-in-one
      ms-vscode.hexeditor
    ];
  };
}
