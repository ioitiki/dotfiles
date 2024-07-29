# default.nix
{ pkgs ? import <nixpkgs> {} }:

pkgs.callPackage ./zed-editor.nix {}
