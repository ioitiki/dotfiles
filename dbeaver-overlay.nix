self: super: {
  dbeaver = super.dbeaver.overrideAttrs (oldAttrs: rec {
    version = "24.0.3";

    src = super.fetchFromGitHub {
      owner = "dbeaver";
      repo = "dbeaver";
      rev = version;
      hash = "sha256-xBQana8tLaRFC06pqe3AXxrz4/DHfkKfxHEeVZssw/8=";
    };

    mvnHash = "1234";
  });
}
