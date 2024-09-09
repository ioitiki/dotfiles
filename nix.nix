{ ... }:

{
  nix.extraOptions = ''
    experimental-features = nix-command flakes
  '';

  # Allow all the things
  nixpkgs.config.allowUnfree = true;
}
