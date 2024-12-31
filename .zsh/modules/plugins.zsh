# Syntax Highlighting aktivieren
source /nix/store/4igfkvnpq07x65k9k17didqaabxgwmw6-zsh-syntax-highlighting-0.8.0/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Syntax Highlighting anpassen
ZSH_HIGHLIGHT_STYLES[comment]="f:g=${COLORS[grey]}"             # Grau für Kommentare
ZSH_HIGHLIGHT_STYLES[command]="fg=${COLORS[green]}"            # Grün für gültige Befehle
ZSH_HIGHLIGHT_STYLES[unknown-command]="fg=${COLORS[red]}"      # Rot für ungültige Befehle
ZSH_HIGHLIGHT_STYLES[option]="fg=${COLORS[cyan]}"              # Aqua für Optionen
ZSH_HIGHLIGHT_STYLES[argument]="fg=${COLORS[yellow]}"          # Gelb für Argumente
ZSH_HIGHLIGHT_STYLES[path]="fg=${COLORS[blue]}"                # Blau für Pfade
ZSH_HIGHLIGHT_STYLES[alias]="fg=${COLORS[magenta]}"            # Lila für Aliase
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]="fg=${COLORS[orange]}" # Orange für Strings
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]="fg=${COLORS[orange]}" # Orange für Strings in doppelten Anführungszeichen
ZSH_HIGHLIGHT_STYLES[backticks]="fg=${COLORS[cyan]}"           # Aqua für Backticks
ZSH_HIGHLIGHT_STYLES[globbing]="fg=${COLORS[yellow]}"          # Gelb für Globbing
ZSH_HIGHLIGHT_STYLES[history-expansion]="fg=${COLORS[red]}"    # Rot für History Expansion
ZSH_HIGHLIGHT_STYLES[reserved-word]="fg=${COLORS[white]}"      # Weiß für reservierte Wörter
ZSH_HIGHLIGHT_STYLES[function]="fg=${COLORS[blue]}"            # Blau für Funktionen

# Autovervollständigung aktivieren
source /nix/store/s8bdmx4sbapnq2dqwbiw2qczyfmd2s5f-zsh-autosuggestions-0.7.1/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Syntax-Korrektur aktivieren und farbig gestalten
CORRECT_COLOR="fg{${COLORS[green]}}" # Grün aus der zentralen Farbpalette
ERROR_COLOR="fg{${COLORS[red]}}"     # Rot aus der zentralen Farbpalette
RESET_COLOR="fg{${COLORS[white]}}"   # Zurücksetzen der Farben

# Optionen für Syntax-Korrektur
setopt CORRECT
setopt CORRECT_ALL

# Syntax-Korrektur aktivieren und farbig gestalten
CORRECT_COLOR="%F{${COLORS[green]}}" # Grün aus der zentralen Farbpalette
ERROR_COLOR="%F{${COLORS[red]}}"     # Rot aus der zentralen Farbpalette
RESET_COLOR="%f"                     # Zurücksetzen der Farben

# Nachrichten überschreiben
zle -N zsh_error_message
zle -N zsh_correct_message

