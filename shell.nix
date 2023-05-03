with import (fetchTarball https://github.com/nixos/nixpkgs/archive/1a411f23ba299db155a5b45d5e145b85a7aafc42.tar.gz) {};

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
