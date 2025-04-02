with import <nixpkgs> {};
mkShell{
  nativeBuildInputs = [
    # tooling
    just
    rsync
    # javascript
    nodejs_18
    nodePackages.yarn
  ];

}
