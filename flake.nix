{
  description = "jsonresume-nix";

  inputs = {
    flake-utils.url = "flake-utils";
  };

  outputs = {
    self,
    flake-utils,
    nixpkgs,
    ...
  }:
    {
      # Flake outputs
      templates.default = {
        path = ./template;
        description = "Template to build jsonresume with nix";
      };
    }
    // flake-utils.lib.eachDefaultSystem (system: let
      pkgs = nixpkgs.legacyPackages.${system};
    in {
      # Specify formatter package for "nix fmt ." and "nix fmt . -- --check"
      formatter = pkgs.alejandra;

      # Set up nix develop shell environment
      devShells.default = pkgs.mkShell {
        buildInputs = [
          pkgs.resumed
          pkgs.nodejs
        ];
      };

      # Expose packages for themes and resumed used
      packages = let
        nix-to-json = pkgs.writeShellScript "nix-to-json" ''
          set -eou pipefail

          if test -e "./resume.nix"; then
            echo "Converting ./resume.nix to ./resume.json" 1>&2
            ${pkgs.nix}/bin/nix-instantiate --eval -E 'builtins.toJSON (import ./resume.nix)' \
              | ${pkgs.jq}/bin/jq -r \
              | ${pkgs.jq}/bin/jq > resume.json
          elif test -e "./resume.toml"; then
            echo "Converting ./resume.toml to ./resume.json" 1>&2
            ${pkgs.nix}/bin/nix-instantiate --eval -E 'builtins.toJSON (builtins.fromTOML (builtins.readFile ./resume.toml))' \
              | ${pkgs.jq}/bin/jq -r \
              | ${pkgs.jq}/bin/jq > resume.json
          elif test -e "./resume.json"; then
            echo "Found ./resume.json, not touching it" 1>&2
          else
            echo "No resume of any supported format found, currently looking for" 1>&2
            echo "any of ./resume.(nix|toml|json)"                                1>&2
            exit 2
          fi

          echo "Running validation of ./resume.json" 1>&2
          ${pkgs.resumed}/bin/resumed validate
        '';

        buildThemeBuilder = themeName: let
          themePkg = pkgs.callPackage ./themes/jsonresume-theme-${themeName} {};
        in
          pkgs.writeShellScript "resumed-render-wrapped-${themeName}-${themePkg.version}" ''
            set -eou pipefail

            # Convert resume.nix to resume.json
            ${nix-to-json}

            # Render resume.json
            ${pkgs.resumed}/bin/resumed render \
              --theme ${themePkg}/lib/node_modules/jsonresume-theme-${themeName}/index.js

            # Remove resume.json
            rm resume.json
          '';
      in {
        inherit nix-to-json;

        # Resumed package used
        inherit (pkgs) resumed;

        # Themes
        resumed-elegant = buildThemeBuilder "elegant";
        resumed-fullmoon = buildThemeBuilder "fullmoon";
        resumed-kendall = buildThemeBuilder "kendall";
        resumed-macchiato = buildThemeBuilder "macchiato";
        resumed-stackoverflow = buildThemeBuilder "stackoverflow";
      };
    });
}
