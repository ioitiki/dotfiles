# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ ... }:
{

  imports = [ # Include the results of the hardware scan.
    <home-manager/nixos>
    ./hardware-configuration.nix
    ./nvidia.nix
    ./andy-user.nix
    ./system-packages.nix
    ./zsh-config.nix
    ./yubikey.nix
    ./bootloader.nix
    # ./check-sms-service.nix
    # ./gammu-service/gammu-smsd.nix
    ./postgres.nix
    ./base.nix
    ./ssh.nix
    # ./xmonad.nix
    ./plasma.nix
    # ./i3.nix
    # ./hyprland.nix
    # ./sway.nix
    ./nix.nix
    # ./chat-openai.nix
  ];

  # options = {
  #   features.full.enable = lib.mkEnableOption "Do everything";
  # };

  # config = lib.mkIf config.features.full.enable {
  #   modules.postgres.enable = true;
  #   modules.base.enable = true;
  #   modules.plasma.enable = true;
  # };
}
