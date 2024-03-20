{ config, lib, pkgs, ... }:

{
  options.services.gammu-smsd = {
    # enable = lib.mkEnableOption "Enable Gammu SMS Daemon";

    customLoggingOption = lib.mkOption {
      type = lib.types.bool;
      default = false;
      description = "Enable custom logging.";
    };
  };


  config = lib.mkIf config.services.gammu-smsd.customLoggingOption {
    environment.systemPackages = [ pkgs.gammu ];

    systemd.services.gammu-smsd = {
      # description = "Gammu SMS Daemon";
      after = [ "network.target" "postgresql.service" ];
      wantedBy = [ "multi-user.target" ];
      serviceConfig = {
        ExecStart = lib.mkForce "${pkgs.gammu}/bin/gammu-smsd -c /etc/nixos/gammu-service/gammu-smsdrc";
        Restart = "always";
        User = lib.mkForce "andy";
      };
    };
  };
}
