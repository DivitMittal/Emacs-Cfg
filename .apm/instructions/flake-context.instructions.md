---
description: Flake structure and tooling conventions for the flake/ directory
applyTo: "flake/**"
---

`flake.nix` auto-imports every `.nix` file under `flake/` via `import-tree` — no explicit import is needed when adding a new file.

Files in this directory:

- `formatters.nix` — treefmt config covering alejandra, deadnix, and statix for Nix files, plus `elisp-autofmt` (sourced from `pkgs.emacs.pkgs.elisp-autofmt`) for Emacs Lisp files.
- `checks.nix` — pre-commit hooks (whitespace trimming, large-file guard, merge-conflict detection, etc.).
- `devshells.nix` — devshell providing nixd, alejandra, elisp-autofmt, and apm-cli; activated automatically via direnv.
- `actions/` — GitHub Actions workflows generated via actions-nix. **Never edit `.github/workflows/` by hand**; modify the source files here and let the generator produce the YAML.

Workflow:

- Run `nix fmt` before committing to format all Nix and Elisp files.
- `nix flake check` is the only validation gate; run it after any change and confirm it passes before committing.
