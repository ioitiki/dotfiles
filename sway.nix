{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    wayland
    waybar
    swaylock
    swayidle
    foot
    wdisplays
    wofi
    wlr-randr
    grim
    slurp
    wayshot
    wl-clipboard
    mako
  ];

  services.greetd.enable = true;
  services.greetd.settings = {
    default_session = {
      command = "${pkgs.sway}/bin/sway";
    };
  };

  programs.sway = {
    enable = true;
    wrapperFeatures.gtk = true;
    extraPackages = with pkgs; [
      swaylock
      swayidle
      wl-clipboard
      mako
      foot
      waybar
    ];
    extraOptions = [ "--unsupported-gpu" ];
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

  xdg.portal = {
    enable = true;
    wlr.enable = true;
    extraPortals = [
      pkgs.xdg-desktop-portal-gtk
    ];
  };

  services.dbus.enable = true;
  xdg.portal.gtkUsePortal = true;
}