{ config, pkgs, ... }:
{
  fonts.packages = with pkgs; [
    noto-fonts
    noto-fonts-cjk
    noto-fonts-emoji
    liberation_ttf
    fira-code
    fira-code-symbols
    mplus-outline-fonts.githubRelease
    dina-font
    proggyfonts
  ];

  services.picom.enable = true;

  services.xserver = {
    enable = true;

    displayManager = {
      lightdm.enable = true;
      autoLogin = {
        enable = true;
        user = "andy";
      };
    };

    windowManager.xmonad = {
      enable = true;
      # extraPackages = with pkgs; [
      #   dmenu #application launcher most people use
      # ];
    };
  };

  environment.systemPackages = with pkgs; [
    # Haskell Desktop
    haskellPackages.xmonad
    haskellPackages.notifications-tray-icon
    haskellPackages.gtk-sni-tray
    haskellPackages.status-notifier-item
    haskellPackages.dbus-hslogger
    haskellPackages.taffybar
  ];
}