{ config, pkgs, lib, ... }:

{
  nixpkgs.config.allowUnfree = true;

  imports = [
    ./values.nix

    ./hosts/vm/hardware-configuration.nix
    ./hosts/vm/boot.nix
  ]
}
