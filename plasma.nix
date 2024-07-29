{ pkgs, ... }:
{
  services.displayManager.autoLogin = {
    enable = true;
    user = "andy";
  };
  services.xserver = {
    enable = true;
    desktopManager.plasma5.enable = true;

    displayManager = {
      lightdm.enable = true;
    };
  };
  fonts.packages = with pkgs; [
    fira-code
    fira-code-symbols
    mplus-outline-fonts.githubRelease
  ];
}