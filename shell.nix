with import <nixpkgs> {};
mkShell{
  nativeBuildInputs = [
    # tooling
    just
    rsync
    # javascript
    nodejs
    nodePackages.yarn
  ];

}
