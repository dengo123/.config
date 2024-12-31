# Oh-My-Posh mit Theme initialisieren
if [ -f ~/.zsh/themes/omp/everforest.toml ]; then
  eval "$(oh-my-posh init zsh --config ~/.zsh/themes/omp/everforest.toml)"
else
  echo "Oh-My-Posh-Konfigurationsdatei ~/.zsh/themes/omp/everforest.toml nicht gefunden!"
fi

