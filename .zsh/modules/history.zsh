# History-Konfiguration
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# Optionen zur Historie
setopt APPEND_HISTORY       # Historie anhängen, statt zu überschreiben
setopt HIST_IGNORE_DUPS     # Keine Duplikate in der Historie speichern
setopt HIST_IGNORE_ALL_DUPS # Alle früheren Duplikate aus der Historie entfernen
setopt HIST_FIND_NO_DUPS    # Duplikate beim Durchsuchen der Historie ignorieren
setopt SHARE_HISTORY        # Historie zwischen allen Shell-Sitzungen teilen
setopt EXTENDED_HISTORY     # Zeitstempel für Befehle speichern
setopt INC_APPEND_HISTORY   # Befehle sofort nach Ausführung speichern
setopt HIST_REDUCE_BLANKS   # Überflüssige Leerzeichen aus Befehlen entfernen
setopt HIST_VERIFY          # Bestätigung vor Ausführung eines Historienbefehls

# Sicherstellen, dass die Historie korrekt geladen und verarbeitet wird
if [[ -f "$HISTFILE" ]]; then
  fc -p "$HISTFILE" # Lade die Historie, wenn sie existiert
fi

# Interaktive Historie mit fzf ohne Nummern
fzf_history_widget() {
  local selected_command
  selected_command=$(fc -rl 1 | awk '!/^\s*$/ {print substr($0, index($0,$2))}' | fzf --height=40% --reverse --border)
  if [[ -n "$selected_command" ]]; then
    LBUFFER="${selected_command}"
    zle redisplay
  fi
}
zle -N fzf_history_widget
bindkey '^R' fzf_history_widget

