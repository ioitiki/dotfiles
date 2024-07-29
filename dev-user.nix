{ pkgs, ... }:

{
  users.users.dev = {
    isNormalUser = true;
    description = "Development User";
    extraGroups = [ "networkmanager" "wheel" "docker" ];
  };

  environment.systemPackages = with pkgs; [
    # Add packages specific to the dev user here
    # For example: xmonad, xmobar, etc.
  ];

  services.xserver.windowManager.xmonad = {
    enable = true;
    enableContribAndExtras = true;
    extraPackages = haskellPackages: [
      haskellPackages.taffybar
      # Add other XMonad-related packages here
    ];
  };
}