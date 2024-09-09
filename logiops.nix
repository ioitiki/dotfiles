{ pkgs, ... }:

{
  # Create systemd service
  systemd.services.logiops = {
    description = "An unofficial userspace driver for HID++ Logitech devices";
    wantedBy = ["multi-user.target"]; # Start on boot
    serviceConfig = {
      Type = "simple";
      ExecStart = "${pkgs.logiops}/bin/logid";
    };
  };

  # Configuration for logiops
  environment.etc."logid.cfg".text = ''
devices: ({
  name: "MX Master 3S";
  dpi: 1500;

  buttons: ({
    cid: 0xc3;
    action = {
      type: "Gestures";
      gestures: (
        {
          direction: "Up";
          mode: "OnThreshold";
          action =
          {
            type: "Keypress";
            keys: ["KEY_LEFTCTRL","KEY_W"];
          };
        },
        {
          direction: "Down";
          mode: "OnThreshold";
          action =
          {
            type: "Keypress";
            keys: ["KEY_ENTER"];
          };
        },
        {
          direction: "Left";
          mode: "OnThreshold";
          action =
          {
            type: "Keypress";
            keys: ["KEY_HOME"];
          };
        },
        {
          direction: "Right";
          mode: "OnThreshold";
          action =
          {
            type: "Keypress";
            keys: ["KEY_END"];
          };
        },
        {
          direction: "None"
          mode: "NoPress"
        }
      );
    };
  });
});
  '';
}
