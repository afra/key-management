{
  description = "AfRA Key management";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = { self, nixpkgs, flake-utils }: flake-utils.lib.eachDefaultSystem (system: let
    pkgs = nixpkgs.legacyPackages.${system};
    dependencies = with pkgs; [
      fish
      pass
      gnupg
      yq-go
      yajsv
    ];
    wrapScriptAsApp = name: flake-utils.lib.mkApp {
      drv = pkgs.writeShellApplication {
        inherit name;
        runtimeInputs = dependencies;
        text = ''
            ${./.}/scripts/${name}.fish
          '';
        };
      };
  in {
    apps = let
    in {
      edit = wrapScriptAsApp "edit";
      verify = wrapScriptAsApp "verify";
      upload = wrapScriptAsApp "upload";
    };
    devShells.default = pkgs.mkShell {
      packages = dependencies;
    };
  });
}
