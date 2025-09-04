#!/usr/bin/env zsh

# Setup script for zenv configuration

# Detect the path to the zshrc file relative to this script
SCRIPT_DIR=${0:A:h}
ZENV_PATH="${SCRIPT_DIR}/zshrc"

# If ZENVDIR is already set, warn but continue (idempotent install guard follows)
if [[ -n "$ZENVDIR" ]]; then
    echo "Note: ZENVDIR is already set (\"$ZENVDIR\"). Proceeding with install check."
fi

# Add sourcing of zenv zshrc to user's .zshrc if not already present
if ! grep -Fq "source \"$ZENV_PATH\"" "$HOME/.zshrc" 2>/dev/null && \
   ! grep -Fq "source $ZENV_PATH" "$HOME/.zshrc" 2>/dev/null; then
    printf "\n# Load zenv\nsource \"%s\"\n" "$ZENV_PATH" >> "$HOME/.zshrc"
    echo "Added zenv to ~/.zshrc"
else
    echo "Zenv is already present in ~/.zshrc"
fi
