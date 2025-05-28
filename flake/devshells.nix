{
  inputs,
  lib,
  ...
}: {
  imports = [inputs.devshell.flakeModule];

  perSystem = {pkgs, ...}: {
    devshells.default = {
      packages = lib.attrsets.attrValues {
        elisp-autofmt = pkgs.emacsPackages.elisp-autofmt;
      };
    };
  };
}