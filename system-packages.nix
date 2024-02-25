{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # chromium
    python3
    beekeeper-studio
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
    gammu
    rofi
    alacritty
    alacritty-theme
    # rambox
    doctl
    s3cmd
    dbeaver
    sublime4
    sublime-merge
  ];
}