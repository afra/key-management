with import (fetchTarball https://github.com/nixos/nixpkgs/archive/b6966d911da89e5a7301aaef8b4f0a44c77e103c.tar.gz) {};

mkShell {
  name = "key-management-shell";
  buildInputs = [
    fish
    pass
    gnupg
    yq-go
    yajsv
  ];
}
