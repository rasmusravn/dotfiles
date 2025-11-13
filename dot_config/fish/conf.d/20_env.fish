# Environment variables and tool initialization
set -x FZF_DEFAULT_COMMAND 'ag -g "" --hidden --ignore .git'
set -Ux EDITOR nvim
set -Ux GITHUB_USERNAME "rasmusravn"
set -Ux GITHUB_EMAIL "git.pavilion936@passmail.com"
starship init fish | source

#fnm env --use-on-cd | source
