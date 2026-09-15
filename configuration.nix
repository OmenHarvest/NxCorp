{ config, pkgs, lib, ... }:

{
  nixpkgs.config.allowUnfree = true;

  imports = [
    ./values.nix

    ./hosts/target-pc/hardware-configuration.nix
    ./hosts/target-pc/boot.nix
  ]
}
