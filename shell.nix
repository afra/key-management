with import <nixpkgs> {};

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
