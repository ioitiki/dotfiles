{ ... }:

{

  # Systemd service definition
  systemd.services.pollSms = {
    description = "Checking SMS...";
    serviceConfig = {
      ExecStart = "/etc/nixos/check_sms.sh";
      Type = "simple";
    };
  };

  # Systemd timer definition
  systemd.timers.pollSmsTimer = {
    description = "Timer for SMS Check Service";
    timerConfig = {
      OnBootSec = "5min";
      OnUnitActiveSec = "20sec";
      Unit = "pollSms.service";
    };
    wantedBy = [ "timers.target" ];
    enable = false;
  };
}
