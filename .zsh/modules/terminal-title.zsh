# Dynamischer Terminaltitel
precmd() {
  local cwd="${PWD##*/}"  # Extrahiert nur den letzten Teil des Pfads (aktueller Ordner)

  # Wenn das aktuelle Verzeichnis das Home-Verzeichnis ist, zeige "<Benutzername>: ~"
  if [[ "$PWD" == "$HOME" ]]; then
    echo -ne "\033]0;dengo123: ~\007"
  else
    # Andernfalls zeige nur den aktuellen Ordner
    echo -ne "\033]0;${cwd}\007"
  fi
}

preexec() {
  # Extrahiere den Dateinamen, falls der Befehl eine Datei referenziert
  local filename=$(echo "$1" | awk '{for (i=2; i<=NF; i++) if ($i !~ /^-/) print $i; exit}')

  if [[ -n "$filename" ]]; then
    # Wenn ein Dateiname erkannt wurde, setze diesen als Titel
    echo -ne "\033]0;${filename}\007"
  else
    # Andernfalls beibehalten, was `precmd` gesetzt hat
    echo -ne "\033]0;zsh\007"
  fi
}

