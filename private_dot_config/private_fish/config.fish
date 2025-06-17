alias rm "rm -i"
alias cp "cp -i"
alias vim nvim
alias mv "mv -i"
alias mkdir "mkdir -p"
alias h history
alias which "type -a"
alias cm chezmoi
alias ce "chezmoi edit --apply"
alias mount_pi "sudo sshfs -o allow_other,default_permissions pi@192.168.0.10:/home/pi/ /mnt/pi"
set -x FZF_DEFAULT_COMMAND 'ag -g "" --hidden --ignore .git'
set -Ux EDITOR nvim
set -Ux GITHUB_USERNAME "rasmusravn"
set -Ux GITHUB_EMAIL "git.pavilion936@passmail.com"
if status is-interactive
    # Commands to run in interactive sessions can go here
end
starship init fish | source
zoxide init fish | source
