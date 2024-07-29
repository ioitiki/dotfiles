{ pkgs, ... }:

{
  security.polkit.enable = true;

  environment.systemPackages = with pkgs; [
    xdg-desktop-portal-hyprland
    dconf
    wofi
    waybar
    dolphin
    hyprpaper
  ];

  programs.hyprland = {
    # Install the packages from nixpkgs
    enable = true;
    # Whether to enable XWayland
    xwayland.enable = true;
  };

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

  services.xserver = {
    enable = true;

    displayManager = {
      gdm.enable = true;
      autoLogin = {
        enable = true;
        user = "andy";
      };
    };
  };


}
