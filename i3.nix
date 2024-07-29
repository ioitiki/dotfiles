{ pkgs, ... }:
{
  environment.pathsToLink = [ "/libexec" ];

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
    desktopManager.xterm.enable = true;

    displayManager = {
      lightdm.enable = true;
      autoLogin = {
        enable = true;
        user = "andy";
      };
    };

    windowManager.i3 = {
      enable = true;

      # extraConfig = ''
      #   workspace_auto_back_and_forth yes
      #   popup_during_fullscreen smart
      # '';
      
      extraPackages = with pkgs; [
        dmenu #application launcher most people use
        # i3status # gives you the default i3 status bar
        i3lock #default i3 screen locker
        # i3blocks #if you are planning on using i3blocks over i3status
        polybar
      ];

      # config = {
      #   startup = [
      #     {
      #       command = "systemctl --user restart polybar";
      #       always = true;
      #       notification = false;
      #     }
      #   ];

      #   gaps = {
      #     inner = 7;
      #     outer = 7;
      #     smartBorders = "on";
      #     smartGaps = true;
      #   };

      #   window = {
      #     hideEdgeBorders = "smart";
      #   };

      #   floating = {
      #     border = 1;
      #     modifier = "Mod4";
      #     criteria = [
      #       {class="Slack";}
      #     ];
      #   };
      # };
    };
  };
}