self: super: {
  vscode = super.callPackage (let
    nixpkgs = builtins.fetchTarball {
      url = "https://github.com/NixOS/nixpkgs/archive/337924f98d1b8db212281f9cbeea828c3761996a.tar.gz";
      sha256 = "0qvdnd4y7jipffkm65lyy13r5llhprih8hik5s5riy37vfasigmq";
    };
    in "${nixpkgs}/pkgs/applications/editors/vscode/vscode.nix") {};
}
