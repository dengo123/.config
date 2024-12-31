# Vi-Modus aktivieren
bindkey -v
export KEYTIMEOUT=1 # Schnelle Umschaltung zwischen Modi

# Zusätzliche Keybindings für Vi-Modus
bindkey '^P' up-line-or-history    # K wie in Vim
bindkey '^N' down-line-or-history # J wie in Vim
bindkey '^?' backward-delete-char # Backspace

# Weitere Keybindings
bindkey '^,' undo # Zeile löschen 
bindkey '^.' accept-and-hold # Vorschlag vervollständigen

