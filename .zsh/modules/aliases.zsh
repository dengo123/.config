# Aliase definieren
alias ll='ls -lah'
alias ..='cd'
alias grep='grep --color=auto'
alias update='nix flake update --flake ~/nix && darwin-rebuild switch --flake ~/nix#NixIntosh'

alias v='nvim'
alias n='nano'
alias e='emacs'

alias cl='clear'

alias g='git'
alias ga='git add'
alias gaa='git add --all'
alias gp='git push'
alias gl='git pull'
alias gc='git commit'
alias gcam='git commit -a -m'
