{ ... }:
{
  # services.desktopManager.plasma6.enable = true;
  
  services.xserver = {
    enable = true;
    desktopManager.plasma5.enable = true;
    # windowManager = {
    #   dwm.enable = true;
    # };
    # windowManager.xmonad = {
    #   enable = true;
    #   enableContribAndExtras = true;
    # };

    displayManager = {
      lightdm.enable = true;
      autoLogin = {
        enable = true;
        user = "andy";
      };
    };
  };
}