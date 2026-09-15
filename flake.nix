{
  description = "NxCorp v0.1a";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";
  };

  outputs = { nixpkgs, ... }: {
    nixosConfigurations.target-pc = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";

      modules = [

        ./configuration.nix

        home-manager.nixosModules.home-manager

        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;

          home-manager.users.employee =
            import ./home/users/employee/home.nix;
        }
      ];
    };

    nixosConfigurations.vm = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";

      modules = [

        ./vmConfiguration.nix

        home-manager.nixosModules.home-manager

        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;

          home-manager.users.employee =
            import ./home/users/employee/home.nix;
        }
      ];
    };
  };
}
