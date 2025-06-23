# Dotfiles

These dotfiles are managed with [chezmoi](https://www.chezmoi.io/). The layout keeps configuration in a cross‑platform friendly structure so that the same repository can be applied on Linux machines, WSL and Raspberry Pi.

## Structure
- `dot_config/chezmoi/chezmoi.toml.tmpl` – global chezmoi configuration and template data.
- `source_dot_config/*` – chezmoi source files that will be placed in `~/.config`.
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

See individual files in `source_dot_config` for details.
### Configuration

This setup uses `chezmoi` templates for theming. You must define the following variables in your `~/.config/chezmoi/chezmoi.toml` file for the theme to apply correctly.

**Example:**
```toml
[data]
  font = { monospace = "JetBrainsMono Nerd Font" }
```
