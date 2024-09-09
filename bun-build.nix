# default.nix
{ pkgs ? import <nixpkgs> {} }:

pkgs.callPackage ./bun.nix {}
