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
      # configurationLimit = 0;
      # enableDebugConfig = true;
    };
  };

  # boot.loader.grub.extraEntries = ''
  #   menuentry "NixOS - DEV" {
  #     search --no-floppy --fs-uuid --set=root 56A6-FC15
  #     linux /EFI/nixos/z700rllqjyi2j3nps88jd0r781iga6pg-linux-6.6.27-bzImage root=/dev/disk/by-uuid/12026f5b-857a-474a-92cc-fa1b71d52580 init=/nix/store/vyys5ahcrfqzsri1pc9jry5n01v31b9w-nixos-system-nixos-24.05pre612413.5672bc9dbf9d/init loglevel=4 nvidia-drm.modeset=1 nvidia.NVreg_OpenRmEnableUnsupportedGpus=1
  #     initrd /EFI/nixos/z76li5nmzdn3jx263x4yaic3rlwmh1kl-initrd-linux-6.6.27-initrd
  #   }
  # '';

}