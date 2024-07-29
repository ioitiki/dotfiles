{ ... }:
let
  bunOverlay = import ./bun-overlay.nix;
  # dbeaverOverlay = import ./dbeaver-overlay.nix;
  # unstableOverlay = import ./unstable-overlay.nix;
  # vscodeOverlay = import ./vscode-overlay.nix;
in
{
  nix.extraOptions = ''
    experimental-features = nix-command flakes
  '';

  nixpkgs.overlays = [ bunOverlay ];

  # Allow all the things
  nixpkgs.config.allowUnfree = true;
}
