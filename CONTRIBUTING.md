# Contributing

Contributions are welcome — bug reports, fixes, and improvements to the Emacs configuration.

## Setup

```sh
nix develop   # enter dev shell (nixd, alejandra)
```

## Guidelines

- **Nix files**: format with `alejandra` (enforced by pre-commit)
- **Emacs Lisp files**: follow Doom conventions (no formatter is enforced)
- Run `nix flake check` before submitting — CI runs the same check
- Test changes with an actual Emacs instance before submitting

## Submitting Changes

1. Fork the repo and create a branch: `feat/description` or `fix/description`
2. Keep commits atomic; use [Conventional Commits](https://www.conventionalcommits.org/) format
3. Open a PR against `main` with a clear description of what and why

## Reporting Issues

Open a GitHub issue with:
- Your platform (macOS/Linux), nixpkgs channel, and Emacs version
- Steps to reproduce
- Expected vs actual behavior
