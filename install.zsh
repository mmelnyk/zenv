#!/bin/zsh

# Setup script for zenv configuration

# Detect the path to the zshrc file in the zenv project
ZENV_PATH="${PWD}/zshrc"

# ZENVDIR is the path to the zenv project, ignore if already set
if [ ! -z "$ZENVDIR" ]; then
    echo "Zenv is already active. Please review your .zshrc file"
    exit 1
fi

# Add sourcing of zenv zshrc to user's .zshrc if not already present
if ! grep -q "source $ZENV_PATH" ~/.zshrc; then
    echo "\n# Load zenv\nsource $ZENV_PATH" >> ~/.zshrc
    echo "Added zenv to ~/.zshrc"
else
    echo "Zenv is already present in ~/.zshrc"
    exit 1
fi