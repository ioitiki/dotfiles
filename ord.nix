{ pkgs }:

pkgs.stdenv.mkDerivation rec {
  pname = "ord";
  version = "0.18.3";

  src = pkgs.fetchurl {
    url = "https://github.com/ordinals/ord/releases/download/0.18.3/ord-0.18.3-x86_64-unknown-linux-gnu.tar.gz";
    sha256 = "0hdfgbxgipdkd485ylxf42ik5zzn4qz9i4a8r6ql60kzn1d0fqwn";
  };

  nativeBuildInputs = [ pkgs.autoPatchelfHook ];

  buildInputs = [
    pkgs.openssl
    pkgs.glibc
    pkgs.gcc-unwrapped
  ];

  meta = {
    description = "Ordinals tool";
    homepage = "https://github.com/ordinals/ord";
    # license = pkgs.stdenv.lib.licenses.asl20;
    license = pkgs.lib.licenses.asl20;
  };

  installPhase = ''
    mkdir -p $out/bin
    cp ord $out/bin/
  '';
}