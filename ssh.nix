{ config, pkgs, ... }:
{
  services.openssh = {
    enable = true;
    settings = {
      PasswordAuthentication = false;
      X11Forwarding = true;
      KbdInteractiveAuthentication = false;
      PermitRootLogin = "yes";
    };
  };

  programs.ssh = {
    forwardX11 = true;
    setXAuthLocation = true;
  };
}
