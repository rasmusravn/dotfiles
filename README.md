# Dotfiles

These dotfiles are managed with [chezmoi](https://www.chezmoi.io/). The layout keeps configuration in a cross‑platform friendly structure so that the same repository can be applied on Linux machines, WSL and Raspberry Pi.

## Structure
- `dot_config/chezmoi/chezmoi.toml.tmpl` – global chezmoi configuration and template data.
- `private_dot_config/*` – actual application configuration files. These are kept private so machine specific templating can be applied.
- `dot_local/bin/` – personal scripts. Executable files will be installed in `~/.local/bin` when applying the dotfiles.

## Installation
1. Install chezmoi: `chezmoi init --apply <repo-url>`.
2. Fill in the variables in `chezmoi.toml.tmpl` or provide them on first run.
3. Run `chezmoi apply` whenever you update the repository.

## Applications
- fish shell
- sway & waybar
- wezterm
- tmux
- neovim
- wofi

See individual files in `private_dot_config` for details.
