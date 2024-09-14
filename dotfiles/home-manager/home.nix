{ config, pkgs, ... }:

{
  imports = [
    ./user.nix
    ./packages.nix
    ./versions.nix
  ];
}

