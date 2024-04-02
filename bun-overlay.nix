self: super:

{
  bun = super.bun.overrideAttrs (oldAttrs: rec {
    version = "1.0.35";
    src = super.fetchurl {
      url = "https://github.com/oven-sh/bun/releases/download/bun-v${version}/bun-linux-x64.zip";
      sha256 = "23b7ea22132cff637da5cc497f9103e29d24abead03e77d818e72201dfba9975";
    };
  });
}
