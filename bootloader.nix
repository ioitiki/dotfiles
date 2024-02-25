{ pkgs, ... }:

let tela = pkgs.fetchFromGitHub
  {
    owner = "ioitiki";
    repo = "tela-grub-theme";
    rev = "3748b8e695dd7b9d650d8d99333a5541eaae215b";
    sha256 = "082m454hgd9j2l23k1768613bszfy2jwajzdwdyhd2vq0byxrwdx";
  };
in
{
  # Bootloader.
  boot.loader = {
    efi.canTouchEfiVariables = true;
    grub = {
      enable = true;
      device = "nodev";
      useOSProber = true;
      efiSupport = true;
      theme = tela;
    };
  };
}