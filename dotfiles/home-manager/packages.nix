
{ pkgs, ... }:

let
  # Import the default packages
  defaultPackages = import ./defaultpackages.nix { inherit pkgs; };
in
{
  # Extend the default packages with additional packages
  home.packages = defaultPackages ++ [
    pkgs.gh #Add your packages down here
  ];
}

