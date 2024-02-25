self: super:
let
  nixos-24_05 = import <nixos-24.05> {
    config = {
      allowUnfree = true;
      allowUnfreePredicate = pkg: builtins.elem (pkg.name or "") [
        "sublimetext4-4169"
        # other packages...
      ];
      permittedInsecurePackages = [
        "openssl-1.1.1w"
      ];
    };
  };
in
{
  sublime4 = nixos-24_05.sublime4;
  mailspring = nixos-24_05.mailspring;
  alacritty = nixos-24_05.alacritty;
  # Ensure other overrides/extensions are correctly defined here
}
