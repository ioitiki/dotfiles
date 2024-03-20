final: prev: {
  bun = prev.bun.overrideAttrs (oldAttrs: rec {
    version = "1.0.31";
    src = prev.fetchurl {
      url = "https://github.com/oven-sh/bun/releases/download/bun-v${version}/bun-linux-x64.zip";
      sha256 = "67c78e162a1d984fd5ad8cbc81e8c96e5064707b29a4e6a68386a47e233fa041";
    };
  });
}
