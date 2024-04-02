self: super:
let
  nixos-23_11 = import <nixos-23.11> {
    config = {
      allowUnfree = true;  
    };
  };
in
{
  awscli2 = nixos-23_11.awscli2;
  # Ensure other overrides/extensions are correctly defined here
}
