let
  sources = import ./nix/sources.nix {};
  niv = import sources.niv {};
  pkgs = import sources.nixpkgs {};
in with pkgs;
mkShell {
  buildInputs = [
    niv.niv
    pkgs.sqlite
    pkgs.ruby
    pkgs.nodejs
    pkgs.yarn
  ];
}
