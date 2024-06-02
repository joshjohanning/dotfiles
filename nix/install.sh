#!/bin/bash

# Define the source and target files
SOURCE_FILE="/flake.nix"
TARGET_DIR="$HOME/.config/nix-darwin"
TARGET_FILE="$TARGET_DIR/flake.nix"

# Create the target directory if it doesn't exist
mkdir -p "$TARGET_DIR"

# Backup the existing target file if it exists
if [ -f "$TARGET_FILE" ]; then
    echo "Backing up existing flake.nix to flake.nix.bak"
    mv "$TARGET_FILE" "${TARGET_FILE}.bak"
fi

# Create the symlink
ln -s "$SOURCE_FILE" "$TARGET_FILE"

echo "Symlink created between $SOURCE_FILE and $TARGET_FILE"