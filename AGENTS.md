# Agent Instructions for Emacs-Cfg

## Overview
Doom Emacs configuration for OS-nixCfg, managed via Nix flakes and nix-doom-emacs-unstraightened.

## Build/Lint/Test Commands
- **Check**: `nix flake check` (runs pre-commit hooks and format checks)
- **Format**: `nix fmt` (runs alejandra, deadnix, statix on Nix files)
- **Dev shell**: `nix develop` (enters development environment)
- **Pre-commit**: Hooks run automatically; manual: `nix flake check`

## Code Style
- **Indentation**: 2 spaces (all files), configured in `.editorconfig`
- **Line endings**: LF only, trim trailing whitespace, final newline required
- **Encoding**: UTF-8
- **Elisp**: Use `lexical-binding: t`, follow Doom conventions, wrap configs in `after!` blocks
- **Nix**: Follow alejandra formatting, no dead code (deadnix), no anti-patterns (statix)
- **Comments**: Elisp uses `;;` for regular comments, `;;;` for file headers

## File Structure
- `init.el`: Doom module configuration (which modules to enable)
- `config.el`: Personal Emacs configuration (fonts, theme, keybinds, settings)
- `packages.el`: Package declarations (install/override/pin packages)
- `flake/`: Nix flake configuration (checks, formatters, devshells, actions)
