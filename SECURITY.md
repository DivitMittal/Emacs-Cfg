# Security Policy

## Scope

This repo contains a Nix flake and Doom Emacs configuration. It has no servers or network services. The relevant attack surface includes:

- **Emacs Lisp** executed with full user permissions — malicious or unsafe elisp in config files
- **Nix derivations** that install files into the user's home directory
- **Nix module options** that expand to shell commands or write config files

## Reporting a Vulnerability

If you find a security issue (e.g. a module option that expands to unsafe shell code, or elisp that could leak credentials):

1. Open a **GitHub issue** with the label `security`.
2. Include a description, reproduction steps, and impact assessment.

## Out of Scope

- Issues in upstream Doom Emacs, nixpkgs, or nix-doom-emacs-unstraightened (report upstream)
- General Emacs security concerns unrelated to this configuration

## Supported Versions

Only the latest commit on `main` is supported.
