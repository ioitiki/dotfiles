self: super:

{
  bun = super.bun.overrideAttrs (oldAttrs: rec {
    version = "1.0.27";
    src = super.fetchurl {
      url = "https://github.com/oven-sh/bun/releases/download/bun-v${version}/bun-linux-x64.zip";
      sha256 = "b78f0aea5b9e25a35c28f02e6a1cf3d9356899686febb4a562a7a8ec4068aad3";
    };
  });
}
