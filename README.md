# NxCorp
Corporate NixOS configuration variant for inheritance

## start with PC
> chmod 777 ./generate-hardware-configuration.sh
> ./generate-hardware-configuration.sh
> nixos-rebuild switch --flake #.target-pc

## start with VM
> chmod 777 ./generate-hardware-configuration.sh
> ./generate-hardware-configuration.sh vm
> nixos-rebuild switch --flake #.vm
