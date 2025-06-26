# Dotfiles

These dotfiles are managed with [chezmoi](https://www.chezmoi.io/). The layout keeps configuration in a cross‑platform friendly structure so that the same repository can be applied on Linux machines, WSL and Raspberry Pi.

## Structure
- `dot_config/chezmoi/chezmoi.toml.tmpl` – global chezmoi configuration and template data.
- `dot_config/*` – configuration files installed to `~/.config`.
- `dot_local/bin/` – personal scripts. Executable files will be installed in `~/.local/bin` when applying the dotfiles.

Earlier versions used the `source_` prefix for directories. The layout now uses
`dot_` folders directly to mirror the target paths.

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

See individual files in `dot_config` for details.
### Configuration

This setup uses `chezmoi` templates for theming. You must define the following variables in your `~/.config/chezmoi/chezmoi.toml` file for the theme to apply correctly.

**Example:**
```toml
[data]
  font = { monospace = "JetBrainsMono Nerd Font" }
```

### Scripts
- `run_once_install-packages.sh.tmpl` installs recommended packages on first run.
- `dot_local/bin/executable_update.sh.tmpl` updates packages depending on the OS.
- Host specific scripts can be placed in `dot_local/bin/`, for example `executable_run_report.sh.tmpl`.

### Git configuration
- Update `dot_gitconfig.tmpl` with your name and email to personalize `git`.

### Fish conf.d
The repository keeps the main `config.fish` empty and instead relies on the
`conf.d` directory. Fish will source any `.fish` files placed in
`~/.config/fish/conf.d/` at startup.

Files provided here include:
- `00_aliases.fish` – common aliases such as `rm -i` and `vim` mapped to `nvim`.
- `10_path.fish` – ensures `~/.local/bin` is added to your `PATH`.
- `20_env.fish` – environment variables and tool initialization, e.g. `starship`.
- `30_functions.fish` – helper functions like `note` for quickly opening notes.
- `90_work_aliases.fish.tmpl` – shows how to add templated host-specific
  aliases with `chezmoi`.

Add your own `.fish` files in this folder to extend the shell. They are sourced
automatically whenever Fish starts.
