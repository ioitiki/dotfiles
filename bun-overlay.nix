self: super:

{
  bun = super.bun.overrideAttrs (oldAttrs: rec {
    version = "1.1.20";
    src = super.fetchurl {
      url = "https://github.com/oven-sh/bun/releases/download/bun-v${version}/bun-linux-x64.zip";
      sha256 = "6cb70ad0349a2cecc94ab2113cd1d07a5779aae77c71cab1cf20c881ac0c0775";
    };
  });
}
