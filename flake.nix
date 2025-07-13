{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }: 
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in {
    packages.x86_64-linux.default = pkgs.stdenv.mkDerivation {
      pname = "greet";
      version = "1.0";
      src = self;
      nativeBuildInputs = [ pkgs.cmake ];
    };
  };
}
