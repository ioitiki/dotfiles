{ pkgs, ... }:

let
  # ord = import ./ord.nix {
  #   inherit pkgs;
  # };

  zed-overlay = import ./zed-editor-overlay.nix;
  bun-overlay = import ./bun-overlay.nix;
  
  customPkgs = import <nixpkgs> {
    overlays = [ zed-overlay bun-overlay ];
  };

  bun26 = customPkgs.bun26;

  zed-fhs = pkgs.buildFHSUserEnv {
    name = "zed";
    targetPkgs = pkgs: with customPkgs; [
      zed-editor
    ];
    runScript = "zed";
  };

  gammuWithSQL = pkgs.gammu.overrideAttrs (oldAttrs: {
    configureFlags = (oldAttrs.configureFlags or []) ++ ["--with-postgres"];
    buildInputs = (oldAttrs.buildInputs or []) ++ [pkgs.postgresql];
  });
in
{
  services.flatpak.enable = true;
  environment.systemPackages = with pkgs; [
    # bitcoin
    # ord
    # st
    python3
    wget
    geckodriver
    firefox
    nodejs_20
    yarn-berry
    awscli2
    kubectl
    kubectx
    # pgadmin4
    docker
    kubernetes-helm
    zip
    unzip
    yubioath-flutter
    slack
    openssl
    vlc
    jq
    gimp
    morgen
    joplin-desktop
    ngrok
    android-studio
    android-tools
    jdk17
    mailspring
    bun26
    prettierd
    # xbindkeys
    # xdotool
    gammuWithSQL
    rofi
    alacritty
    alacritty-theme
    rambox
    doctl
    s3cmd
    # dbeaver
    # stdenv
    sublime4
    sublime-merge
    kitty
    inkscape
    nil
    home-manager
    clockify
    solc
    xorg.xauth
    godns
    gitui
    zed-fhs
    eslint_d
    libreoffice
    logiops
  ];
}
