{ pkgs, ... }:

let
  gammuWithSQL = pkgs.gammu.overrideAttrs (oldAttrs: {
    configureFlags = (oldAttrs.configureFlags or []) ++ ["--with-postgres"];
    buildInputs = (oldAttrs.buildInputs or []) ++ [pkgs.postgresql];
  });
in
{
  environment.systemPackages = with pkgs; [
    # dmenu
    # st
    python3
    wget
    geckodriver
    firefox
    nodejs_18
    yarn
    awscli2
    kubectl
    kubectx
    pgadmin4
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
    mailspring
    bun
    xbindkeys
    xdotool
    gammuWithSQL
    rofi
    alacritty
    alacritty-theme
    rambox
    doctl
    s3cmd
    dbeaver
    stdenv
    sublime4
    sublime-merge
    google-chrome
    kitty
    inkscape
    nil
    home-manager
  ];
}
